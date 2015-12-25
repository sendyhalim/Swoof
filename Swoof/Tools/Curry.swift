//
//  Curry.swift
//  Swoof
//
//  Created by Sendy Halim on 12/18/15.
//  Copyright © 2015 Sendy Halim. All rights reserved.
//

public func curry <A, B, C>(f: (A, B) -> C) -> (A -> B -> C) {
  return { a in { b in f(a, b) } }
}
