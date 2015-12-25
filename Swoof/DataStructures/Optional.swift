//
//  Optional.swift
//  Swoof
//
//  Created by Sendy Halim on 12/25/15.
//  Copyright © 2015 Sendy Halim. All rights reserved.
//

import Foundation

///  Fmap operator
infix operator <^> { associativity left precedence 90 }

public func <^> <A, B>(f: A -> B, value: A?) -> B? {
  return value.map(f)
}

prefix operator <^> {}

public prefix func <^> <A, B>(f: A -> B) -> A? -> B? {
  return curry(<^>)(f)
}

// Ap operator
infix operator <*> { associativity left precedence 90 }

public func <*> <A, B>(fs: (A -> B)?, value: A?) -> B? {
  return fs.flatMap { $0 <^> value }
}

public func pure <A>(value: A) -> A? {
  return .Some(value)
}

/// Bind operator
infix operator >>= { associativity left precedence 90 }

public func >>= <A, B>(value: A?, f: A -> B?) -> B? {
  return value.flatMap(f)
}
