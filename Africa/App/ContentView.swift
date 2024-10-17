//
//  ContentView.swift
//  Africa
//
//  Created by Uriy Martynenko on 13.10.2024.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    let animals: [AnimalModel] = Bundle.main.decode("animals.json")
    
    // MARK: - BODY
    var body: some View {
        NavigationStack {
            List {
                CoverImageViewModel()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                
                ForEach(animals) { animal in
                    NavigationLink {
                        AnimalDetailViewModel(animal: animal)
                    } label: {
                        AnimalListItemViewModel(animal: animal)
                    } //: NavigationLink
                    .listRowBackground(Color.black)
                } //: ForEach
            } //: List
            .listStyle(.plain)
            .navigationTitle("Africa")
            .navigationBarTitleDisplayMode(.large)
        } //: NavigationStack
    }
}

#Preview {
    ContentView()
}
