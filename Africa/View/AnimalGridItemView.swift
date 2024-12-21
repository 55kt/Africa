//
//  AnimalGridItemView.swift
//  Africa
//
//  Created by Vlad on 21/12/24.
//

import SwiftUI

struct AnimalGridItemView: View {
    // MARK: - Properties
    let animal: Animal
    
    // MARK: - Body
    var body: some View {
        Image(animal.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }// Body
}// View

// MARK: - Preview
#Preview {
    var animals: [Animal] = Bundle.main.decode("animals.json")
    
    AnimalGridItemView(animal: animals.randomElement()!)
}
