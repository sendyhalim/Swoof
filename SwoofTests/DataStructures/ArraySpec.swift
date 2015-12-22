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
    describe("Functor laws") {
      it("should satisfy functor law `fmap id = id`") {
        let value = [8, 9, 11]
        let idValue = id(value)

        expect(id <^> value).to(equal(idValue))
      }

      it("should satisfy functor law `fmap (p . q) = (fmap p) . (fmap q)`") {
        let value = [8, 9, 11]
        let plusThree = curry(+)(3)
        let minusTen = curry(-)(10)
        let expectedFn = <^>(plusThree) • <^>(minusTen)
        let expected = expectedFn(value)

        expect((plusThree • minusTen) <^> value).to(equal(expected))
      }
    }

    describe("Functionality test") {
      it("should add two to all elements of array") {
        let xs = [1, 3, 5]
        let addTwo = curry(+)(2)

        expect(addTwo <^> xs).to(equal([3, 5, 7]))
      }

      it("should do non-deterministic calculation") {
        let xs = [8, 20]
        let fs = [curry(+)(2), curry(/)(40)]
        let expected = [10, 22, 5, 2]

        expect(fs <*> xs).to(equal(expected))
      }
    }
  }
}