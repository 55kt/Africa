//
//  AnimalDetailView.swift
//  Africa
//
//  Created by Vlad on 14/12/24.
//

import SwiftUI

struct AnimalDetailView: View {
    // MARK: - Properties
    let animal: Animal
    
    // MARK: - Body
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                // Hero image
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                
                // Title
                Text(animal.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                    .foregroundStyle(.primary)
                    .background(
                        Color.accentColor
                            .frame(height: 6)
                            .offset(y: 24)
                    )
                
                // Headline
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundStyle(.accent)
                    .padding(.horizontal)
                
                // Gallery
                Group {
                    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in Pictures")
                    
                    InetGalleryView(animal: animal)
                }
                .padding(.horizontal)
                
                // Facts
                
                // Description
                
                // Map
                
                // Link
            }// Vstack
            .navigationBarTitle("Learn more about \(animal.name)", displayMode: .inline)
        }// ScrollView
    }// Body
}// View

// MARK: - Preview
#Preview {
    let animals: [Animal] = Bundle.main.decode("animals.json")
    
    NavigationStack {
        AnimalDetailView(animal: animals.first!)
    }
}
