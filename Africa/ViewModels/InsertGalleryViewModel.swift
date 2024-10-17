//
//  InsertGalleryViewModel.swift
//  Africa
//
//  Created by Uriy Martynenko on 18.10.2024.
//

import SwiftUI

struct InsertGalleryViewModel: View {
    // MARK: - PROPERTIES
    let animal: AnimalModel
    
    // MARK: - BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 15) {
                ForEach(animal.gallery, id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .clipShape(.rect(cornerRadius: 12))
                } //: ForEach
            } //: HStack
        } //: ScrollView
    }
}

#Preview {
    let animals: [AnimalModel] = Bundle.main.decode("animals.json")
    
    InsertGalleryViewModel(animal: animals[0])
}
