`import Ember from 'ember'`

ApplicationController = Ember.Controller.extend
  actions:
    toggle: ->
      @set "model", new Ember.RSVP.Promise (resolve) -> setTimeout resolve, 500

`export default ApplicationController`
