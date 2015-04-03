`import Ember from 'ember'`

ApplicationController = Ember.Controller.extend
  actions:
    toggle: ->
      @get("model").save()

`export default ApplicationController`
