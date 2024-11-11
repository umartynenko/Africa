//
//  CoverImageViewModel.swift
//  Africa
//
//  Created by Uriy Martynenko on 17.10.2024.
//

import SwiftUI


struct CoverImageViewModel: View {
    @State private var currentIndex: Int = 0
    
    // MARK: - PROPERTIES
    let coverImages: [CoverImageModel] = Bundle.main.decode("covers.json")
    let timer = Timer.publish(every: 5, on: .main, in: .common).autoconnect()
    
    // MARK: - BODY
    var body: some View {
        TabView(selection: $currentIndex) {
            ForEach(coverImages.indices, id: \.self) { index in
                Image(coverImages[index].name)
                    .resizable()
                    .scaledToFill()
                    .tag(index)
            } //: LOOP
        } //: TABVIEW
        .tabViewStyle(PageTabViewStyle())
        .onReceive(timer) { _ in
            withAnimation {
                currentIndex = (currentIndex + 1) % coverImages.count
            }
        }
    }
}

// MARK: - PREVIEW
#Preview {
    CoverImageViewModel()
}
