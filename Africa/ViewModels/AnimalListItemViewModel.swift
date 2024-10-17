//
//  AnimalListItemViewModel.swift
//  Africa
//
//  Created by Uriy Martynenko on 17.10.2024.
//

import SwiftUI

struct AnimalListItemViewModel: View {
    // MARK: - PROPERTIES
    let animal: AnimalModel
    
    // MARK: = BODY
    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            Image(animal.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(
                    RoundedRectangle(cornerRadius: 12)
                )
            
            VStack(alignment: .leading, spacing: 8) {
                Text(animal.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundStyle(.accent)
                
                Text(animal.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.trailing, 8)
            } //: VStack
        } //: HStack
    }
}

#Preview {
    let animals: [AnimalModel] = Bundle.main.decode("animals.json")
    AnimalListItemViewModel(animal: animals[1])
}
