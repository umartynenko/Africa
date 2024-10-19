//
//  AnimalDetailViewModel.swift
//  Africa
//
//  Created by Uriy Martynenko on 18.10.2024.
//

import SwiftUI

struct AnimalDetailViewModel: View {
    // MARK: - PROPERTIES
    let animal: AnimalModel
    
    // MARK: - BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                // Hero Image
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                
                // Title
                Text(animal.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                    .foregroundStyle(.primary)
                    .background(Color.accent
                        .frame(height: 6)
                        .offset(y: 24)
                    )
                
                // Headline
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundStyle(.accent)
                    .padding(.horizontal)
                
                // Gallery
                Group {
                    HeadingViewModel(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in Pictures")
                    
                    InsertGalleryViewModel(animal: animal)
                }
                .padding(.horizontal)
                
                // Facts
                Group {
                    HeadingViewModel(headingImage: "questionmark.circle", headingText: "Did you know?")
                    
                    InsetFactViewModel(animal: animal)
                }
                .padding(.horizontal)
                
                // Description
                Group {
                    HeadingViewModel(headingImage: "info.circle", headingText: "All about \(animal.name)")
                    
                    Text(animal.description)
                        .multilineTextAlignment(.leading)
                        .layoutPriority(1)
                }
                .padding(.horizontal)
                
                // Map
                Group {
                    HeadingViewModel(headingImage: "map", headingText: "National Parks")
                    
                    InsetMapViewModels()
                }
                .padding(.horizontal)
                
                // Link
                Group {
                    HeadingViewModel(headingImage: "books.vertical", headingText: "Learn More")
                    
                    ExternalWeblinkViewModel(animal: animal)
                }
                .padding(.horizontal)
            } //: VStack
            .navigationTitle("Learn about \(animal.name)")
            .navigationBarTitleDisplayMode(.inline)
        } //: ScrollView
    }
}

#Preview {
    let animals: [AnimalModel] = Bundle.main.decode("animals.json")
    
    NavigationStack {
        AnimalDetailViewModel(animal: animals[0])
    }
}
