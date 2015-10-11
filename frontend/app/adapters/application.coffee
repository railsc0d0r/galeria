`import DS from 'ember-data'`
`import $ from 'jquery'`

ApplicationAdapter = DS.RESTAdapter.extend(
  namespace: 'backend'
  headers: 
    "X-CSRF-Token": $('meta[name="csrf-token"]').attr('content')
)

`export default ApplicationAdapter`
