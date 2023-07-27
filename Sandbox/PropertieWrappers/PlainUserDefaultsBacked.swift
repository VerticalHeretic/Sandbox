//
//  PlainUserDefaultsBacked.swift
//  Sandbox
//
//  Created by Łukasz Stachnik on 27/07/2023.
//

import Foundation

@propertyWrapper
struct PlainUserDefaultsBacked<T> {
    let key: String
    let defaultValue: T
    var storage = UserDefaults.standard
    
    var wrappedValue: T {
        get {
            let value = storage.value(forKey: key) as? T
            return value ?? defaultValue
        }
        set {
            storage.setValue(newValue, forKey: key)
        }
    }
}
