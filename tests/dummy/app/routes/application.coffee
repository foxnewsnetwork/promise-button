`import Ember from 'ember'`

ApplicationRoute = Ember.Route.extend
  model: ->
    @store.find "thing", 666

`export default ApplicationRoute`
