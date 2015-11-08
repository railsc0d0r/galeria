`import Ember from 'ember'`
`import AuthenticatedRouteMixin from 'ember-simple-auth/mixins/authenticated-route-mixin';`

PicturesRoute = Ember.Route.extend(AuthenticatedRouteMixin,
  model: () -> this.store.find('picture')
)

`export default PicturesRoute`
