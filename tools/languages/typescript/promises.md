# Promises

## Description

Promises are objects representing a value that is not available yet (asynchronous result).
Being able to represent this value (synchronously) simplifies the management of asynchronous tasks by
isolating the asynchronous computation of a value from the subsequent usage of the value.

Promises are based on a simple finite state machine with three states (pending, resolved & rejected) and
rules to compose chains of promises.

Finally, promises offer a strong guaranty that there will be no synchronous exception.

See the references for examples and advanced arguments.

## Async functions

To maintain the async guarantees (result and errors), a function returning a Promise should be marked
as `async`. Asynchronous functions have two differences with standard functions:

- Their result is guaranted to be a Promise, even if a synchronous error occurs
- They can "await" other promises, leading to a more readable code.

  Awaiting a Promise is equivalent to putting the rest of the function body in a handler function passed
  to `.then`.

## A+ spec

Promises are an example of feature that was first developped as a user library and gain enough
traction to enter in the spec. To ensure compatibility between the numerous Promise libraries that appeared,
a specification called `A+ Promises` was created. Any compliant implementation is compatible with any other
implementation.

## Comparison with callbacks

Callbacks are the classic way to deal with asynchronous code.
Callbakcs are functions passed as parameters to the executor. Once the executor resolves the value, he calls the provided
function back by passing it the result.

## Error handling

On of the main strength of promises is that they simplify the error control flow to mimic a synchronous execution with
try/catch statements.

The promise logic is wrapped inside a function: this way, when a synchronous error is thrown, this error is catched
and handled as an async error so we just need to handle async errors.

## Examples

**TODO**

## References

- [Bluebird - Why Promises][bluebird-why-promises]
- [MDN - Promise][mdn-promise]


[bluebird-why-promises]: http://bluebirdjs.com/docs/why-promises.html
[mdn-promise]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise
