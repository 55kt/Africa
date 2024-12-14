//
//  HeadingView.swift
//  Africa
//
//  Created by Vlad on 14/12/24.
//

import SwiftUI

struct HeadingView: View {
    // MARK: - Properties
    var headingImage: String
    var headingText: String
    
    // MARK: - Body
    var body: some View {
        HStack {
            Image(systemName: headingImage)
                .foregroundStyle(.accent)
                .imageScale(.large)
            
            Text(headingText)
                .font(.title3)
                .fontWeight(.bold)
        }// HStack
        .padding(.vertical)
    }// Body
}// View

// MARK: - Preview
#Preview {
    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in Pictures")
}
