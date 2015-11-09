`import Ember from 'ember'`

PicturesNewController = Ember.Controller.extend(
  actions: 
    fileLoaded: (file) ->
      # readAs="readAsFile"
      console.log(file.name, file.type, file.size / 1024)
      this.set('file_name', file.name)
      this.set('file_size', Math.round(file.size / 1024) + "Kb")
    close: () ->
              $.modal.close();
              this.transitionToRoute('pictures')
)

`export default PicturesNewController`
