//
//  AnimalGridItemView.swift
//  Africa
//
//  Created by Uriy Martynenko on 11.11.2024.
//

import SwiftUI

struct AnimalGridItemView: View {
    let animal: AnimalModel
    
    var body: some View {
        Image(animal.image)
            .resizable()
            .scaledToFit()
            .clipShape(.rect(cornerRadius: 12))
    }
}

#Preview {
    let animals: [AnimalModel] = Bundle.main.decode("animals.json")
    
    AnimalGridItemView(animal: animals.first!)
}
