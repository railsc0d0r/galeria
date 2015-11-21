`import Ember from 'ember'`

PictureEditView = Ember.View.extend(
  didInsertElement: () ->
    element = $('#edit_form')
    element.modal(
      escapeClose: false,
      clickClose: false,
      showClose: false
    )
)

`export default PictureEditView`
