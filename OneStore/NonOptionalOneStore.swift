//
//  NonOptionalOneStore.swift
//  OneStore
//
//  Created by muukii on 2/28/17.
//  Copyright © 2017 muukii. All rights reserved.
//

import Foundation

open class NonOptionalOneStore<T: OneStoreValueProtocol>: OneStoreType {

  public typealias Value = T

  public let source: OneStore<T>
  private let initializedValue: T

  public final var storeKey: String {
    return source.storeKey
  }

  public final var stack: Stack {
    return source.stack
  }

  public final var rawStoreKey: String {
    return source.rawStoreKey
  }

  public init(stack: Stack, key: String, initializedValue: T) {
    self.source = OneStore<T>(stack: stack, key: key, initializedValue: initializedValue)
    self.initializedValue = initializedValue
    if source.value == nil {
      self.source.value = initializedValue
    }
  }

  public convenience init<R: RawRepresentable>(stack: Stack, key: R, initializedValue: T) where R.RawValue == String {
    self.init(stack: stack, key: key.rawValue, initializedValue: initializedValue)
  }

  open var value: T {
    get {
      guard let value = source.value else {
        assertionFailure("This feature has broken😭")
        return initializedValue
      }
      return value
    }
    set {
      source.value = newValue
    }
  }
}
