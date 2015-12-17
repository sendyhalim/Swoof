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
    it("Should add two to all elements of array") {
      let xs = [1, 3, 5]
      let addTwo = { $0 + 2 }

      expect(addTwo <^> xs).to(equal([3, 5, 7]))
    }
  }
}