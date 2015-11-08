`import DS from 'ember-data'`

Picture = DS.Model.extend {
  name: DS.attr('string'),
  public: DS.attr('boolean'),
  url_large: DS.attr('string'),
  url_thumbnail: DS.attr('string')  
}

`export default Picture`
