//
//  VideoListView.swift
//  Africa
//
//  Created by Vlad on 13/12/24.
//

import SwiftUI

struct VideoListView: View {
    // MARK: - Properties
    @State var videos: [Video] = Bundle.main.decode("videos.json")
    let hapticImpact = UIImpactFeedbackGenerator(style: .medium)
    
    // MARK: - Body
    var body: some View {
        NavigationView {
            List {
                ForEach(videos) { item in
                    VideoListItemView(video: item)
                        .padding(.vertical, 8)
                }// ForEach
            }// List
            .listStyle(InsetGroupedListStyle())
            .navigationBarTitle("Videos", displayMode: .large)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        videos.shuffle()
                        hapticImpact.impactOccurred()
                    }) {
                        Image(systemName: "arrow.2.squarepath")
                    }// Button
                }// ToolbarItem
            }// toolbar
        }// NavigationView
    }// Body
}// View

// MARK: - Preview
#Preview {
    VideoListView()
}
