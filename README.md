# Promise-button

Another implementation of a promise-aware component for emberjs

Use it like so:
```coffee
MyRoute = Ember.Route.extend
  model: -> @store.find "post", 55

MyController = Ember.Controller.extend
  post: Ember.computed.alias("model")
```

```handlebars
{{#promise-button model=post loadingText="loading"}}
  submit will to allah
{{/promise-button}}
```
This will create a button which, when post is pending or saving, become disabled.

By the way, this may seem obvious, but you MUST pass a promise or a DS.Model to the promise button

## Installation

* `git clone` this repository
* `npm install`
* `bower install`

## Running

* `ember server`
* Visit your app at http://localhost:4200.

## Running Tests

* `ember test`
* `ember test --server`

## Building

* `ember build`

For more information on using ember-cli, visit [http://www.ember-cli.com/](http://www.ember-cli.com/).
