//
//  CoverImageView.swift
//  Africa
//
//  Created by Vlad on 13/12/24.
//

import SwiftUI

struct CoverImageView: View {
    // MARK: - Properties
    let coverImages: [CoverImage] = Bundle.main.decode("covers.json")
    
    // MARK: - Body
    var body: some View {
        TabView {
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                    .scaledToFill()
            }// ForEach
        }// TabView
        .tabViewStyle(PageTabViewStyle())
    }// Body
}// View

// MARK: - Preview
#Preview {
    CoverImageView()
}
