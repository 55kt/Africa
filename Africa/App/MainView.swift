//
//  MainView.swift
//  Africa
//
//  Created by Vlad on 13/12/24.
//

import SwiftUI

struct MainView: View {
    // MARK: - Properties
    
    // MARK: - Body
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Image(systemName: "square.grid.2x2")
                    Text("Browse")
                }
            
            VideoListView()
                .tabItem {
                    Image(systemName: "play.rectangle")
                    Text("Watch")
                }
            
            MapView()
                .tabItem {
                    Image(systemName: "map")
                    Text("Map")
                }
            
            GalleryView()
                .tabItem {
                    Image(systemName: "photo")
                    Text("Gallery")
                }
        }// TabView
    }
}

// MARK: - Preview
#Preview {
    MainView()
}
