//
//  MapAnnotationViewModel.swift
//  Africa
//
//  Created by Uriy Martynenko on 27.10.2024.
//

import SwiftUI

struct MapAnnotationViewModel: View {
    // MARK: - PROPERTIES
    @State private var animation: Double = 0.0
    
    let location: NationalParkLocation
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.accent)
                .frame(width: 54, height: 54, alignment: .center)
            
            Circle()
                .stroke(Color.accent, lineWidth: 2)
                .frame(width: 52, height: 52, alignment: .center)
                .scaleEffect(1 + CGFloat(animation))
                .opacity(1 - animation)
            
            Image(location.image)
                .resizable()
                .scaledToFit()
                .frame(width: 48, height: 48, alignment: .center)
                .clipShape(.circle)
        } //: ZStack
        .onAppear {
            withAnimation(Animation.easeOut(duration: 2).repeatForever(autoreverses: false)) {
                animation = 1
            }
        }
    }
}

#Preview {
    var locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
    
    MapAnnotationViewModel(location: locations.first!)
}
