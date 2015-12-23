# Swoof

Swoof is a swift library that implements operator aliases

| Function        | Operator   | Signature                     |
| --------------- | ---------- | ----------------------------- |
| `fmap`          | `<^>`      | `(A -> B) -> F<A> -> F<B>`    |
| `apply`         | `<*>`      | `F<A -> B> -> F<A> -> F<B>`   |
| `bind`          | `>>=`      | `F<A> -> (A -> F<B>) -> F<B>` |
| `mappend`       | `<>`       | `M<A> -> M<A> -> M<A>`        |
| `alternative`   | `<|>`      | `F<A> -> F<A> -> F<A>`        |

This library is only for learning purposes, please do not use it in production.
For more stable libraries, you can use [Swiftx](https://github.com/typelift/Swiftx) or
[Swiftz](https://github.com/typelift/Swiftz)


## TODOs
- Tests
- Documentation
