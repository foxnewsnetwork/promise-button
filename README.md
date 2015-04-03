# Promise-button

Another implementation of a promise-aware component for emberjs

Use it like so:

```handlebars
{{#promise-button promise=myPromise loadingText="loading"}}
  submit will to allah
{{/promise-button}}
```
This will create a button which, when myPromise is pending, become disabled.

By the way, this may seem obvious, but you MUST pass a promise to the promise button

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
