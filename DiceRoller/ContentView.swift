//
//  ContentView.swift
//  DiceRoller
//
//  Created by Garrison on 2024/4/24.
//

import SwiftUI

struct ContentView: View {
    @State private var numberOfDice: Int = 1;
    
    var body: some View {
        VStack {
            Text("Dice Roller")
                .padding()
                .font(.largeTitle.lowercaseSmallCaps()).foregroundColor(.white)
            
            HStack {
                ForEach(1...numberOfDice, id: \.self) { _ in
                    DiceView()
                        .foregroundColor(.white)
                }
            }
            
            HStack {
                Button("Remove Dice", systemImage: "minus.circle.fill") {
                    numberOfDice -= 1
                }
                .disabled(numberOfDice == 1)
                .buttonStyle(.bordered)
                
                Button("Add Dice", systemImage: "plus.circle.fill") {
                    numberOfDice += 1
                }
                .disabled(numberOfDice == 5)
                .buttonStyle(.bordered)
                
            }
            .padding()
            .labelStyle(.iconOnly)
            .font(.title)
            
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.accent)
        .tint(.white)
    }
}

#Preview {
    ContentView()
}
