//
//  Capitalized.swift
//  Sandbox
//
//  Created by Łukasz Stachnik on 27/07/2023.
//

import Foundation

@propertyWrapper
struct Capitalized {

    private var value = ""
    
    var projectedValue: Capitalized {
        self
    }
    
    var wrappedValue: String {
        set {
            value = newValue.capitalized
        }
        get {
            return value
        }
    }
    
    init(wrappedValue: String) {
        self.wrappedValue = wrappedValue
    }
}

struct CapitalizedWrapper {
    private var _value: String = ""
    var value: String {
        set {
            _value = newValue.capitalized
        }
        
        get {
            return _value
        }
    }
    
    init(_value: String) {
        self._value = _value.capitalized
    }
}
