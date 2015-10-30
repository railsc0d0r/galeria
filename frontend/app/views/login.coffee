`import Ember from 'ember'`
LoginView = Ember.View.extend(
  didInsertElement: () ->
    element = $('#login_form')
    element.modal(
        escapeClose: false,
        clickClose: false,
        showClose: false
    )
)

`export default LoginView`
