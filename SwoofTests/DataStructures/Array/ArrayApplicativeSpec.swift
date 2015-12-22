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
          expect(pure(id) <*> value).to(equal(value))
        }
      }
    }
  }
}