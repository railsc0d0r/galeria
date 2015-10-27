`import Ember from 'ember'`
LoginView = Ember.View.extend(
  didInsertElement: () ->
    element = $('#login_form')
    element.modal()
)

`export default LoginView`
