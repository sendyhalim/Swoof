//
//  ArraySpec.swift
//  Swoof
//
//  Created by Sendy Halim on 12/17/15.
//  Copyright © 2015 Sendy Halim. All rights reserved.
//

import Swoof
import Nimble
import Quick

class ArraySpec: QuickSpec {
  override func spec() {
    it("Should satisfy functor laws") {
      let value = [8, 9, 11]
      let idValue = id(value)

      expect(id <^> value).to(equal(idValue))
    }

    it("Should add two to all elements of array") {
      let xs = [1, 3, 5]
      let addTwo = curry(+)(2)

      expect(addTwo <^> xs).to(equal([3, 5, 7]))
    }

    it("Should do non-deterministic calculation") {
      let xs = [8, 20]
      let fs = [curry(+)(2), curry(/)(40)]
      let expected = [10, 22, 5, 2]

      expect(fs <*> xs).to(equal(expected))
    }
  }
}