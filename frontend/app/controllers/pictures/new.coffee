`import Ember from 'ember'`

PicturesNewController = Ember.Controller.extend(
  needs: ['application'],
  actions: 
    fileLoaded: (file) ->
      this.set('file_name', file.filename)
      this.set('file_size', Math.round(file.size / 1024) + "Kb")
      this.set('attachement', file)
      $.modal.resize()

    createPicture: () ->
      attachement = this.get('attachement')
      name = this.get('name')
      comment = this.get('comment')

      if attachement && name
        picture = this.store.createRecord('picture',{ name: name, comment: comment, attachement: attachement })
        self = this
        picture.save().then(() ->
          console.log('Picture created.')
          self.transitionToRoute('pictures')
          self.controllerFor('messages').send('successfulCreatedPicture')
          self._close()
          ).catch((error) ->
             console.log('Picture could not be saved: ' + error.message)
          )
      else
        this.controllerFor('messages').send('showErrorMsg', 'Please choose an image and a name.')

    close: () ->
        this._close()
  _close: () ->
            this.set('file','')
            this.set('name','')
            this.set('comment','')
            this.set('attachement',null)
            $.modal.close()
            this.transitionToRoute('pictures')
)

`export default PicturesNewController`
