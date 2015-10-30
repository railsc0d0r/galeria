`import Ember from 'ember'`
LoginView = Ember.View.extend(
  didInsertElement: () ->
    element = $('#login_form')
    element.modal(
        escapeClose: false,
        clickClose: false,
        showClose: false
    )

    controller = this.get('controller')

    if controller.get('errorMessage')
        controller.set('errorMessage', null) 
)

`export default LoginView`
