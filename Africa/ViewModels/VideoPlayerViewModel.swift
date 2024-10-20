//
//  VideoPlayerViewModel.swift
//  Africa
//
//  Created by Uriy Martynenko on 20.10.2024.
//

import SwiftUI
import AVKit


struct VideoPlayerViewModel: View {
    // MARK: - PROPERTIES
    var videoSelected: String
    var videoTitle: String
    
    // MARK: - BODY
    var body: some View {
        VStack {
            VideoPlayer(player: playVideo(fileName: videoSelected, fileFormat: "mp4")) {
//                Text(videoTitle)
            }
            .overlay(
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32)
                    .padding(.top, 6)
                    .padding(.horizontal, 8),
                alignment: .topLeading
            )
        } //: VStack
        .foregroundStyle(.accent)
        .navigationTitle(videoTitle)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        VideoPlayerViewModel(videoSelected: "lion", videoTitle: "Lion")
    }
}
