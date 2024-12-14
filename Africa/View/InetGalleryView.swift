//
//  InetGalleryView.swift
//  Africa
//
//  Created by Vlad on 14/12/24.
//

import SwiftUI

struct InetGalleryView: View {
    // MARK: - Properties
    let animal: Animal
    
    // MARK: - Body
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 15) {
                ForEach(animal.gallery, id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .cornerRadius(12)
                }// ForEach
            }// HStack
        }// SrollView
    }// Body
}// View

// MARK: - Preview
#Preview {
    let animals: [Animal] = Bundle.main.decode("animals.json")
    
    InetGalleryView(animal: animals.first!)
}
