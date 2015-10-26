`import Ember from 'ember'`
LoginView = Ember.View.extend(
  didInsertElement: () ->
    element = $('#login_form')
    console.log("I get called every time Login is rendered. Now call modal() on " + element)
    element.modal()
)

`export default LoginView`
