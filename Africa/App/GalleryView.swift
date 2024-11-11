//
//  GalleryView.swift
//  Africa
//
//  Created by Uriy Martynenko on 13.10.2024.
//

import SwiftUI


struct GalleryView: View {
    @State private var selectedAnimal: String = "lion"
    @State private var gridLayout: [GridItem] = [GridItem(.flexible())]
    @State private var gridColumn: Double = 3.0
    
    let animals: [AnimalModel] = Bundle.main.decode("animals.json")
    let haptics = UIImpactFeedbackGenerator(style: .medium)
    // SIMPLE GRID DEFINITION
//    let gridLayout: [GridItem] = [
//        GridItem(.flexible()),
//        GridItem(.flexible()),
//        GridItem(.flexible())
//    ]
    // EFFICIENT GRID DEFINITION
//    let gridLayout: [GridItem] = Array(repeating: GridItem(.flexible()), count: 3)
    // DYNAMIC GRID LAYOUT
    
    func gridSwitch() {
        withAnimation(.easeIn) {
            gridLayout = Array(repeating: .init(.flexible()), count: Int(gridColumn ))
        }
    }
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 30) {
                Image(selectedAnimal)
                    .resizable()
                    .scaledToFit()
                    .clipShape(.circle)
                    .overlay(Circle().stroke(Color.white, lineWidth: 8))
                
                // MARK: - Slider
                Slider(value: $gridColumn, in: 2...4, step: 1)
                    .padding(.horizontal)
                    .onChange(of: gridColumn) { oldValue, newValue in
                        gridSwitch()
                    }
                
                // MARK: - Grid
                LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10) {
                    ForEach(animals) { item in
                        Image(item.image)
                            .resizable()
                            .scaledToFit()
                            .clipShape(.circle)
                            .overlay(Circle().stroke(Color.white, lineWidth: 1))
                            .onTapGesture {
                                selectedAnimal = item.image
                                haptics.impactOccurred()
                            }
                    } //: ForEach
                }//: LazyVGrid
                .onAppear {
                    gridSwitch()
                }
            } //: VStack
            .padding(.horizontal, 10)
            .padding(.vertical, 50)
        } //: ScrollView
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(MotionAnimationViewModel())
    }
}

#Preview {
    GalleryView()
}
