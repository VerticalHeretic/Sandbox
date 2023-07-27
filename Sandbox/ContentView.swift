//
//  ContentView.swift
//  Sandbox
//
//  Created by Łukasz Stachnik on 27/07/2023.
//

import SwiftUI

struct ContentView: View {
    @State var firstName = CapitalizedWrapper(_value: "lukasz")
    @State var lastName = CapitalizedWrapper(_value: "stachnik")
    
    var body: some View {
        CapitalizedNamesView(firstName: $firstName,
                             lastName: $lastName)
    }
}

struct CapitalizedNamesView: View {
    @Binding var firstName: CapitalizedWrapper
    @Binding var lastName: CapitalizedWrapper
    
    var body: some View {
        VStack(spacing: 8) {
            Text(firstName.value)
            Text(lastName.value)
        }
    }
}

#Preview {
    ContentView()
}
