`import DS from 'ember-data'`

Picture = DS.Model.extend {
  name: DS.attr('string'),
  comment: DS.attr('string'),
  attachement: DS.attr(),
  public: DS.attr('boolean'),
  url_large: DS.attr('string'),
  url_thumbnail: DS.attr('string')  
}

`export default Picture`
