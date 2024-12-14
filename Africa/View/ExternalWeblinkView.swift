//
//  ExternalWeblinkView.swift
//  Africa
//
//  Created by Vlad on 14/12/24.
//

import SwiftUI

struct ExternalWeblinkView: View {
    // MARK: - Properties
    let animal: Animal
    
    // MARK: - Body
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()

                Group {
                    Image(systemName: "arrow.up.right.square")
                    
                    Link(animal.name, destination: (URL(string: animal.link) ?? URL(string: "https://wikipedia.org"))!)
                }
                .foregroundStyle(.accent)
            }// HStack
        }// GroupBox
    }// Body
}// View

// MARK: - Preview
#Preview {
    let animals: [Animal] = Bundle.main.decode("animals.json")
    
    NavigationStack {
        ExternalWeblinkView(animal: animals.randomElement()!)
    }
}
