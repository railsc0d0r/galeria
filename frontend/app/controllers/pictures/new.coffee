`import Ember from 'ember'`

PicturesNewController = Ember.Controller.extend(
  actions: 
    fileLoaded: (file) ->
      this.set('file_name', file.filename)
      this.set('file_size', Math.round(file.size / 1024) + "Kb")
      this.set('attachement', file)

    createPicture: () ->
      attachement = this.get('attachement')
      name = this.get('name')
      comment = this.get('comment')

      picture = this.store.createRecord('picture',{ name: name, comment: comment, attachement: attachement })
      self = this
      picture.save().then(() ->  
        console.log('Picture created.')
      	self.transitionToRoute('pictures')
        self.set('file','')
        self._close()
        ,() ->
           console.log('Picture could not be saved.')
      )

    close: () ->
        this._close()
  _close: () ->
            $.modal.close();
            this.transitionToRoute('pictures')
)

`export default PicturesNewController`
