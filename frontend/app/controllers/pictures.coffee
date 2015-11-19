`import Ember from 'ember'`

PicturesController = Ember.ArrayController.extend(
  itemController: 'picture'

  actions:
    setPublic: (id,isPublic) ->
      self = this
      this.store.find('picture',id).then((picture) ->
        picture.set('public', isPublic)
        picture.save().then(() ->
          self.controllerFor('messages').send('successfulPublishedPicture', isPublic)
        ).catch((error) -> self._failure(error))
      ).catch((error) ->self._failure(error))
        
      return
  _failure: (error) ->
          this.controllerFor('messages').send('showErrorMsg', error.message)
)

`export default PicturesController`
