//
//  Array.swift
//  Swoof
//
//  Created by Sendy Halim on 12/17/15.
//  Copyright © 2015 Sendy Halim. All rights reserved.
//

import Foundation

///  Fmap operator
infix operator <^> { associativity left precedence 90 }

public func <^> <A, B>(f: A -> B, value: [A]) -> [B] {
  return value.map(f)
}

///  Apply operator
infix operator <*> { associativity left precedence 90 }

public func <*> <A, B>(fs: [A -> B], value: [A]) -> [[B]] {
  return fs.map { $0 <^> value }
}


/// Bind operator
infix operator >>= { associativity left precedence 90 }

public func >>= <A, B>(value: [A], f: A -> [B]) -> [B] {
  return value.flatMap(f)
}