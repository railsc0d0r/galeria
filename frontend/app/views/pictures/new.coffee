`import Ember from 'ember'`
PicturesNewView = Ember.View.extend(
  didInsertElement: () ->
    element = $('#new_form')
    element.modal()

    controller = this.get('controller')

    if controller.get('errorMessage')
        controller.set('errorMessage', null) 
)

`export default PicturesNewView`
