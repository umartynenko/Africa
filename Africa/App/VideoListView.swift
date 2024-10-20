//
//  VideoListView.swift
//  Africa
//
//  Created by Uriy Martynenko on 13.10.2024.
//

import SwiftUI

struct VideoListView: View {
    // MARK: - PROPERTIES
    @State var videos: [VideoModel] = Bundle.main.decode("videos.json")
    
    let hapticImpact = UIImpactFeedbackGenerator(style: .medium)
    
    // MARK: - BODY
    var body: some View {
        NavigationStack {
            List {
                ForEach(videos) { item in
                    VideoListItemViewModel(video: item)
                        .padding(.vertical, 8)
                } //: ForEach
//                .listRowBackground(Color.black)
            } //: List
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Videos")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        videos.shuffle()
                        hapticImpact.impactOccurred()
                    } label: {
                        Image(systemName: "arrow.2.squarepath")
                    }

                }
            }
        } //: NavigatioStack
    }
}

#Preview {
    VideoListView()
}
