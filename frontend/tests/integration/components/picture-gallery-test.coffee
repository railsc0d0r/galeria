`import { test, moduleForComponent } from 'ember-qunit'`
`import hbs from 'htmlbars-inline-precompile'`

moduleForComponent 'picture-gallery', 'Integration | Component | picture gallery', {
  integration: true
}

test 'it renders', (assert) ->
  assert.expect 2

  # Set any properties with @set 'myProperty', 'value'
  # Handle any actions with @on 'myAction', (val) ->

  @render hbs """{{picture-gallery}}"""

  assert.equal @$().text().trim(), ''

  # Template block usage:
  @render hbs """
    {{#picture-gallery}}
      template block text
    {{/picture-gallery}}
  """

  assert.equal @$().text().trim(), 'template block text'
