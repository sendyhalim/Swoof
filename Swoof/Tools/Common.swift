//
//  Common.swift
//  Swoof
//
//  Created by Sendy Halim on 12/22/15.
//  Copyright © 2015 Sendy Halim. All rights reserved.
//

import Foundation

func id <A>(value: A) -> A {
  return value
}

func const <A, B>(value: A) -> B -> A {
  return { _ in value }
}