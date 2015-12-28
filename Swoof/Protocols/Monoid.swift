//
//  Monoid.swift
//  Swoof
//
//  Created by Sendy Halim on 12/28/15.
//  Copyright © 2015 Sendy Halim. All rights reserved.
//

import Foundation

public protocol Monoid {
  func mempty() -> Self
  func mappend(m: Self) -> Self
}

infix operator <> { associativity left precedence 90 }

public func <> <M: Monoid>(a: M, b: M) -> M {
  return a.mappend(b)
}