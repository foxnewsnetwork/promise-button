`import Ember from 'ember'`
`import DS from 'ember-data'`

wait = (time, cb) -> window.setTimeout cb, time
Thing = ->
  thing:
    id: 666
    email: Math.random().toString()

ApplicationAdapter = DS.ActiveModelAdapter.extend
  find: ->
    new Ember.RSVP.Promise (resolve) ->
      wait 400, ->
        Ember.run @, resolve, Thing()
  updateRecord: ->
    new Ember.RSVP.Promise (resolve) ->
      wait 2000, ->
        Ember.run @, resolve, Thing()

`export default ApplicationAdapter`
