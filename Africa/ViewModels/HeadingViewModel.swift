//
//  HeadingViewModel.swift
//  Africa
//
//  Created by Uriy Martynenko on 18.10.2024.
//

import SwiftUI

struct HeadingViewModel: View {
    // MARK: - PROPERTIES
    var headingImage: String
    var headingText: String
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Image(systemName: headingImage)
                .foregroundStyle(.accent)
                .imageScale(.large)
            
            Text(headingText)
                .font(.title3)
                .fontWeight(.bold)
        } //: HSTack
        .padding(.vertical)
    }
}

#Preview {
    HeadingViewModel(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in Pictures")
}
