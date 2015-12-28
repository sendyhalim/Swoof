//
//  Arrow.swift
//  Swoof
//
//  Created by Sendy Halim on 12/28/15.
//  Copyright © 2015 Sendy Halim. All rights reserved.
//

import Foundation

///  Fmap operator
infix operator <^> { associativity left precedence 90 }

public func <^> <A, B, R>(f: A -> B, g: R -> A) -> R -> B {
  return f • g
}

///  Ap operator
infix operator <*> { associativity left precedence 90 }

public func <*> <A, B, R>(f: R -> (A -> B), g: R -> A) -> R -> B {
  return {
    f($0)(g($0))
  }
}

public func pure <A, R>(value: A) -> R -> A {
  return const(value)
}

///  Bind operator
infix operator >>= { associativity left precedence 90 }

public func >>= <A, B, R>(f: R -> A, g: A -> (R -> B)) -> R -> B {
  return {
    g(f($0))($0)
  }
}

///  Right to Left function composition
infix operator <<< { associativity left precedence 200 }

public func <<< <A, B, C>(f: B -> C, g: A -> B) -> A -> C {
  return f • g
}

///  Left to Right function composition
infix operator >>> { associativity left precedence 200 }

public func >>> <A, B, C>(f: A -> B, g: B -> C) -> A -> C {
  return g • f
}