//
//  MainView.swift
//  Africa
//
//  Created by Uriy Martynenko on 13.10.2024.
//

import SwiftUI

struct MainView: View {
    // MARK: - BODY
    var body: some View {
        // MARK: - TABVIEW
        TabView {
            // MARK: - CONTENTVIEW
            ContentView()
                .tabItem {
                    Image(systemName: "square.grid.2x2")
                    Text("Browse")
                }
            
            // MARK: - VIDEOLISTVIEW
            VideoListView()
                .tabItem {
                    Image(systemName: "play.rectangle")
                    Text("Watch")
                }
            
            // MARK: - MAPVIEW
            MapView()
                .tabItem {
                    Image(systemName: "map")
                    Text("Locations")
                }
            
            // MARK: - GALLERYVIEW
            GalleryView()
                .tabItem {
                    Image(systemName: "photo")
                    Text("Gallery")
                }
        } //: TABVIEW
    }
}

// MARK: - PREVIEW
#Preview {
    MainView()
}
