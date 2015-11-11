`import Ember from 'ember'`

PicturesNewController = Ember.Controller.extend(
  actions: 
    fileLoaded: (file) ->
      this.set('file_name', file.name)
      this.set('file_size', Math.round(file.size / 1024) + "Kb")

      picture = this.store.createRecord('picture',{attachement: file})
      self = this
      picture.save().then(() ->  
        console.log('Picture created.')
      	self.transitionToRoute('pictures')
        self.set('file','')
        ,() ->
           console.log('Picture could not be saved.')
      )

    close: () ->
              $.modal.close();
              this.transitionToRoute('pictures')
)

`export default PicturesNewController`
