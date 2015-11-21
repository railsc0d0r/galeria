`import Ember from 'ember'`

PictureEditController = Ember.Controller.extend(
  needs: ['application'],
  actions:
    fileLoaded: (file) ->
      this.set('file_name', file.filename)
      this.set('file_size', Math.round(file.size / 1024) + "Kb")
      this.set('attachement', file)
      $.modal.resize()

    updatePicture: () ->
                     picture = this.get('model')
                     attachement = this.get('attachement')
                     if attachement
                        picture.set('attachement', attachement)

                     name = this.get('model.name')
                     comment = this.get('model.comment')

                     if name
                       self = this
                       picture.set('name', name)
                       picture.set('comment', comment)
                       picture.set('attachement', attachement)
                       picture.save().then(() ->
                                             self.controllerFor('messages').send('successfulUpdatedPicture')
                                             self._close()
                                          ).catch((error) ->
                                                         self.controllerFor('messages').send('showErrorMSG', error.message)
                                                         picture.rollbackAttributes()
                                                 )
                       return
                     else
                       this.controllerFor('messages').send('showErrorMsg', "Please choose at least a name.")
                       picture.rollbackAttributes()
                       return
    close: () ->
             this._close()

  _close: () ->
            $.modal.close()
            this.transitionToRoute('pictures')

)

`export default PictureEditController`
