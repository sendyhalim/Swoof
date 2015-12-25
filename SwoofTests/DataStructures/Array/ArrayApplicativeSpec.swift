//
//  ArrayApplicativeSpec.swift
//  Swoof
//
//  Created by Sendy Halim on 12/22/15.
//  Copyright © 2015 Sendy Halim. All rights reserved.
//

import Foundation

import Swoof
import Nimble
import Quick

class ArrayApplicativeSpec: QuickSpec {
  override func spec() {
    describe("Applicative laws :") {
      context("Identity law") {
        it("should satisfy `pure id <*> v = v`") {
          let value = [1, 2]
          let result: [Int] = pure(id) <*> value
          expect(result).to(equal(value))
        }
      }

      context("Homomorphism law") {
        it("should satisfy `pure f <*> pure x = pure (f x)`") {
          let f = curry(+)(20)
          let x = 80
          let expected: [Int] = pure(f(x))

          expect(pure(f) <*> pure(x)).to(equal(expected))
        }
      }

      context("Composition law") {
        it("should satisfy `u <*> (v <*> w) = pure (.) <*> u <*> v <*> w`") {
          // TODO: implement arrow first
        }
      }
    }
  }
}
