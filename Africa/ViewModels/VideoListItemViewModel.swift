//
//  VideoListItemViewModel.swift
//  Africa
//
//  Created by Uriy Martynenko on 20.10.2024.
//

import SwiftUI

struct VideoListItemViewModel: View {
    // MARK: - PROPERTIES
    let video: VideoModel
    
    // MARK: - BODY
    var body: some View {
        HStack(spacing: 10) {
            ZStack {
                Image(video.thumbnail)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 80)
                    .clipShape(.rect(cornerRadius: 9))
                
                Image(systemName: "play.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 32)
                    .shadow(radius: 4)
            } //: ZSTack
            
            VStack(alignment: .leading, spacing: 10) {
                Text(video.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundStyle(.accent)
                
                Text(video.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
            }
        } //: HSTack
    }
}

#Preview {
    let videos: [VideoModel] = Bundle.main.decode("videos.json")
    
    VideoListItemViewModel(video: videos.first!)
}
