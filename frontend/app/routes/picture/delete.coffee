`import Ember from 'ember'`

PictureDeleteRoute = Ember.Route.extend(
  model: () ->
           this.modelFor('picture')
  afterModel: (picture,transition) ->
                self = this
                picture.deleteRecord()
                picture.save().then(
                  () ->
                        self.controllerFor('messages').send('successfulDeletedPicture')
                        self.transitionTo('pictures')
                        return
                  , (error) ->
                        self.controllerFor('messages').send('Failed to delete picture: ' + error.message)
                ) 
        
)

`export default PictureDeleteRoute`
