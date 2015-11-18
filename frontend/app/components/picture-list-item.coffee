`import Ember from 'ember'`

PictureListItemComponent = Ember.Component.extend(
  classNames: ['picture-list-item']
  classNameBindings: ['isPublic:public:private']

  isPublic: false

  isPublicChanged: Ember.observer('isPublic', ()-> this.sendAction('setPublicAction', this.get('pictureId'), this.get('isPublic')))
)

`export default PictureListItemComponent`
