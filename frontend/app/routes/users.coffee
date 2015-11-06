`import Ember from 'ember'`
`import AuthenticatedRouteMixin from 'ember-simple-auth/mixins/authenticated-route-mixin';`

UsersRoute = Ember.Route.extend(AuthenticatedRouteMixin,
  init: () ->
        $.modal.close()
        return
)

`export default UsersRoute`
