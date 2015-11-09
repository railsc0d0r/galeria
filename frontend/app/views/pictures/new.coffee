`import Ember from 'ember'`
PicturesNewView = Ember.View.extend(
  didInsertElement: () ->
    element = $('#new_form')
    element.modal(
      escapeClose: false,
      clickClose: false,
      showClose: false
    )

    controller = this.get('controller')

    if controller.get('errorMessage')
        controller.set('errorMessage', null) 

    if controller.get('file_name')
      controller.set('file_name', null) 
      controller.set('file_size', null) 

)

`export default PicturesNewView`
