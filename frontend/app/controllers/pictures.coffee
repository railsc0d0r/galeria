`import Ember from 'ember'`

PicturesController = Ember.ArrayController.extend(
  itemController: 'picture'

  actions:
    setPublic: (id,isPublic) ->
      console.log('Getting picture for id ' + id + ' and setting public to ' + isPublic)
      self = this
      this.store.find('picture',id).then((picture) ->
        picture.set('public', isPublic)
        picture.save().then(() ->
          self.controllerFor('messages').send('successfulPublishedPicture', isPublic)
        ).catch((reason) ->
          self.controllerFor('messages').send('showErrorMsg', reason.error)
        )
      ).catch((reason) ->
          self.controllerFor('messages').send('showErrorMsg', reason.error)
      )
        
      return
)

`export default PicturesController`
