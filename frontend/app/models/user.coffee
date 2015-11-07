`import DS from 'ember-data'`

User = DS.Model.extend {
      username: DS.attr('string'),
      email: DS.attr('string'),
      is_admin: DS.attr('boolean')
}

`export default User`
