`import Ember from 'ember'`
`import AuthenticatedRouteMixin from 'ember-simple-auth/mixins/authenticated-route-mixin';`

PicturesRoute = Ember.Route.extend(AuthenticatedRouteMixin,
  model: () -> this.store.findAll('picture')
  renderTemplate: () ->
        this.render('pictures',
          into: 'application'
        )
        return
)

`export default PicturesRoute`
