`import Ember from 'ember'`

PromiseButtonComponent = Ember.Component.extend Ember.PromiseProxyMixin,
  tagName: "button"
  classNames: ["promise-button"]
  classNameBindings: ["disabled:loading:ready"]
  attributeBindings: ["disabled", "type"]
  loadingText: "loading"
  disabled: Ember.computed.alias("isPending")
  isLoading: Ember.computed.alias("isPending")

`export default PromiseButtonComponent`