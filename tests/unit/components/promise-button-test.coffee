`import Ember from 'ember'`
`import { test, moduleForComponent } from 'ember-qunit'`

moduleForComponent 'promise-button', {
  # specify the other units that are required for this test
  # needs: ['component:foo', 'helper:bar']
}

test 'it renders', (assert) ->
  assert.expect 2

  # creates the component instance
  component = @subject 
    promise: new Ember.RSVP.Promise (resolve) -> resolve()
  assert.equal component._state, 'preRender'

  # renders the component to the page
  @render()
  assert.equal component._state, 'inDOM'

wait = (time, cb) ->
  new Ember.RSVP.Promise (resolve) ->
    window.setTimeout (-> resolve cb()), time

test 'it should change state based on its model', (assert) ->
  promise = new Ember.RSVP.Promise (resolve) -> 
    window.setTimeout resolve, 50
  component = @subject()
  component.set "promise", promise
  Ember.run =>
    @render()
    assert.equal component.get("isLoading"), true
    wait 100, ->
      assert.notEqual component.get("isLoading"), true
      assert.equal component.get("isSettled"), true
      assert.equal component.get("isFulfilled"), true