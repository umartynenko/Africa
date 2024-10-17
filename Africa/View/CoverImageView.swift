//
//  CoverImageView.swift
//  Africa
//
//  Created by Uriy Martynenko on 17.10.2024.
//

import SwiftUI


struct CoverImageView: View {
    // MARK: - PROPERTIES
    let coverImages: [CoverImageModel] = Bundle.main.decode("covers.json")
    
    // MARK: - BODY
    var body: some View {
        TabView {
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                    .scaledToFill()
            } //: LOOP
        } //: TABVIEW
        .tabViewStyle(PageTabViewStyle())
    }
}

// MARK: - PREVIEW
#Preview {
    CoverImageView()
}
