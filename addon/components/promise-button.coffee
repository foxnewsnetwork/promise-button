`import Ember from 'ember'`
`import DS from 'ember-data'`

PromiseButtonComponent = Ember.Component.extend
  tagName: "button"
  classNames: ["promise-button"]
  classNameBindings: ["disabled:loading:ready"]
  attributeBindings: ["disabled", "type"]
  loadingText: "loading"
  disabled: Ember.computed.alias("isPending")
  isLoading: Ember.computed.alias("isPending")
  isPending: Ember.computed.or("promise.isPending", "promise.isSaving")
  isFulfilled: Ember.computed.alias("promise.isFulfilled")
  isSettled: Ember.computed.alias("promise.isSettled")
  isRejected: Ember.computed.alias("promise.isRejected")

  promise: Ember.computed "model", ->
    return if Ember.isBlank @get "model"
    if @get("model.then")
      promise = @get('model')
    else
      promise = new Ember.RSVP.Promise (resolve) => resolve @get "model"
    DS.PromiseObject.create promise: promise

  click: ->
    @sendAction()
    
`export default PromiseButtonComponent`