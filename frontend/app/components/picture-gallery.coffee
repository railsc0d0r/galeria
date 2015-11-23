`import Ember from 'ember'`

PictureGalleryComponent = Ember.Component.extend(
  didInsertElement: () ->
        Galleria.loadTheme(window.assets.galleria['galleria.classic.js'])
        Galleria.configure(imagePan: true)
        Galleria.run('.galleria')
)

`export default PictureGalleryComponent`
