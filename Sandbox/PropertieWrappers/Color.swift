//
//  Color.swift
//  Sandbox
//
//  Created by Łukasz Stachnik on 27/07/2023.
//

import UIKit

@propertyWrapper
struct Colored {
    var light: UIColor
    var dark: UIColor
    
    var projectedValue: Colored { return self }
    
    var wrappedValue: UIColor {
        UITraitCollection.current.userInterfaceStyle == .dark ? dark : light 
    }
}

enum Colors {
    @Colored(light: .blue, dark: .red) static var background
}
