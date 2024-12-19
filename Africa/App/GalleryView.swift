//
//  GalleryView.swift
//  Africa
//
//  Created by Vlad on 13/12/24.
//

import SwiftUI

struct GalleryView: View {
    // MARK: - Properties
    
    // MARK: - Body
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            Text("Gallery")
        }// ScrollView
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(MotionAnimationView())
    }// Body
}// View

// MARK: - Preview
#Preview {
    GalleryView()
}
