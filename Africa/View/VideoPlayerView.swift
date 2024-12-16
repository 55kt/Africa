//
//  VideoPlayerView.swift
//  Africa
//
//  Created by Vlad on 16/12/24.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    // MARK: - Properties
    var videoSelected: String
    var videoTitle: String
    
    // MARK: - Body
    var body: some View {
        VStack {
            VideoPlayer(player: playVideo(fileName: videoSelected, fileFormat: "mp4")) {
//                Text(videoTitle)
            }// VideoPlayer
            .overlay(
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32)
                    .padding(.top, 6)
                    .padding(.horizontal, 8)
                    , alignment: .topLeading
            )// overlay
        }// VStack
        .accentColor(.accent)
        .navigationBarTitle(videoTitle, displayMode: .inline)
    }// Body
}// View

// MARK: - Preview
#Preview {
    NavigationView {
        VideoPlayerView(videoSelected: "lion", videoTitle: "Lion")
    }
}
