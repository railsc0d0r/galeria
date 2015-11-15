`import { test, moduleForComponent } from 'ember-qunit'`
`import hbs from 'htmlbars-inline-precompile'`

moduleForComponent 'picture-list-item', 'Integration | Component | picture list item', {
  integration: true
}

test 'it renders', (assert) ->
  assert.expect 2

  # Set any properties with @set 'myProperty', 'value'
  # Handle any actions with @on 'myAction', (val) ->

  @render hbs """{{picture-list-item}}"""

  assert.equal @$().text().trim(), ''

  # Template block usage:
  @render hbs """
    {{#picture-list-item}}
      template block text
    {{/picture-list-item}}
  """

  assert.equal @$().text().trim(), 'template block text'
