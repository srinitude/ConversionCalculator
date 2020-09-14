//
//  ContentView.swift
//  ConversionCalculator
//
//  Created by Kiren Srinivasan on 9/14/20.
//  Copyright © 2020 Kiren Srinivasan's Practice. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var possibleSourceUnits = [
        "meters",
        "kilometers",
        "feet",
        "yards",
        "miles"
    ]
    @State private var currentSourceUnit = "meters"
    
    @State private var possibleDestinationUnits = [
        "meters",
        "kilometers",
        "feet",
        "yards",
        "miles"
    ]
    @State private var currentDestinationUnit = "meters"
    
    
    var body: some View {
        Text("Hello, World!")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
