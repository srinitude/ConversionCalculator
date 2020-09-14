//
//  ContentView.swift
//  ConversionCalculator
//
//  Created by Kiren Srinivasan on 9/14/20.
//  Copyright © 2020 Kiren Srinivasan's Practice. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Units to bind to input fields
    @State private var possibleSourceUnits = [
        "meters",
        "kilos",
        "feet",
        "yards",
        "miles"
    ]
    @State private var possibleDestinationUnits = [
        "meters",
        "kilos",
        "feet",
        "yards",
        "miles"
    ]
    
    @State private var currentSourceUnitIndex = 0
    @State private var currentDestinationUnitIndex = 0
    
    @State private var numberOfSourceUnitsStr = "0"
    
    // MARK: - Important variables
    private var baseUnit = "meters"
    
    private var numberOfSourceUnits: Double {
        Double(numberOfSourceUnitsStr) ?? 0
    }
    private var currentSourceUnit: String {
        possibleSourceUnits[currentSourceUnitIndex]
    }
    private var currentDestinationUnit: String {
        possibleDestinationUnits[currentDestinationUnitIndex]
    }
    
    private var convertedSourceToDestinationNumber: Double {
        return 0
    }
    
    // MARK: - UI
    var body: some View {
        Form {
            Section(header: Text("Source Unit")) {
                Picker(selection: $currentSourceUnitIndex, label: Text("Source Unit")) {
                    ForEach(0..<possibleSourceUnits.count) {
                        Text(self.possibleSourceUnits[$0])
                    }
                }.pickerStyle(SegmentedPickerStyle())
            }
            
            Section(header: Text("Destination Unit")) {
                Picker(selection: $currentDestinationUnitIndex, label: Text("Destination Unit")) {
                    ForEach(0..<possibleDestinationUnits.count) {
                        Text(self.possibleDestinationUnits[$0])
                    }
                }.pickerStyle(SegmentedPickerStyle())
            }
            
            Section(header: Text("How many \(currentDestinationUnit) are equal to \(numberOfSourceUnitsStr) \(currentSourceUnit)?")) {
                TextField("Number of \(currentSourceUnit)", text: $numberOfSourceUnitsStr).keyboardType(.decimalPad)
            }
            
            Section(header: Text("Answer")) {
                Text("\(convertedSourceToDestinationNumber, specifier: "%.2f") \(currentDestinationUnit)")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
