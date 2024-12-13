//
//  ContentView.swift
//  Africa
//
//  Created by Vlad on 13/12/24.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties
    
    // MARK: - Body
    var body: some View {
        NavigationView {
            List {
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            }// List
            .navigationBarTitle("Africa", displayMode: .large)
        }// NavigationView
    }// Body
}// View

// MARK: - Preview
#Preview {
    ContentView()
}
