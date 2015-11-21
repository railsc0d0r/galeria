`import Ember from 'ember'`

PictureEditRoute = Ember.Route.extend(
  model: () -> this.modelFor('picture')
)

`export default PictureEditRoute`
