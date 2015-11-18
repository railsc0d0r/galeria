`import Ember from 'ember'`

PicturesController = Ember.ArrayController.extend(
  itemController: 'picture'

  actions:
    setPublic: (id,isPublic) ->
      console.log('Getting picture for id ' + id + ' and setting public to ' + isPublic)
      return
)

`export default PicturesController`
