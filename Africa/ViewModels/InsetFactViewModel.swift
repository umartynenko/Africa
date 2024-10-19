//
//  InsetFactViewModel.swift
//  Africa
//
//  Created by Uriy Martynenko on 19.10.2024.
//

import SwiftUI

struct InsetFactViewModel: View {
    // MARK: - PROPERTIES
    let animal: AnimalModel
    
    // MARK: - BODY
    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact, id:\.self) { item in
                    Text(item)
                }
            } //: TabView
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
        } //: GroupBox
    } //: Body
}

// MARK: - PREVIEW
#Preview {
    let animals: [AnimalModel] = Bundle.main.decode("animals.json")
    
    InsetFactViewModel(animal: animals.first!)
}
