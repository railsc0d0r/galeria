`import Ember from 'ember'`

PictureListItemComponent = Ember.Component.extend(
  classNames: ['picture-list-item']
  classNameBindings: ['isPublic:public:private']

  isPublic: false
)

`export default PictureListItemComponent`
