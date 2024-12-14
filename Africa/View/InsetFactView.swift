//
//  InsetFactView.swift
//  Africa
//
//  Created by Vlad on 14/12/24.
//

import SwiftUI

struct InsetFactView: View {
    // MARK: - Properties
    let animal: Animal
    
    // MARK: - Bodu
    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                }
            }// TabView
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
        }// GroupBox
    }// Body
}// View

// MARK: - Preview
#Preview {
    let animals: [Animal] = Bundle.main.decode("animals.json")
    
    InsetFactView(animal: animals.randomElement()!)
}
