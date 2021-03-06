//
//  Common.swift
//  Swoof
//
//  Created by Sendy Halim on 12/22/15.
//  Copyright © 2015 Sendy Halim. All rights reserved.
//

import Foundation

public func id <A>(value: A) -> A {
  return value
}

public func const <A, B>(value: A) -> B -> A {
  return { _ in value }
}

public func compose <A, B, C>(f: B -> C, _ g: A -> B) -> A -> C {
  return { x in f(g(x)) }
}

infix operator • { associativity left precedence 200 }

public func • <A, B, C>(f: B -> C, g: A -> B) -> A -> C {
  return compose(f, g)
}

infix operator <| { associativity left precedence 150 }

public func <| <A, B>(f: A -> B, value: A) -> B {
  return f(value)
}
