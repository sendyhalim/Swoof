//
//  Monoid.swift
//  Swoof
//
//  Created by Sendy Halim on 12/28/15.
//  Copyright © 2015 Sendy Halim. All rights reserved.
//

import Foundation

protocol Monoid {
  typealias Element

  func mempty<M: Monoid where M.Element == Element>() -> M
  func mappend<M: Monoid where M.Element == Element>(m: M) -> M
}
