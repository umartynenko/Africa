//
//  InsetMapViewModels.swift
//  Africa
//
//  Created by Uriy Martynenko on 19.10.2024.
//

import SwiftUI
import MapKit

struct InsetMapViewModels: View {
    // MARK: - PROPERTIES
    @State private var cameraPosition: MapCameraPosition = .region(MKCoordinateRegion(
        center: .init(latitude: 6.600286, longitude: 16.4377599),
        span: .init(latitudeDelta: 60.0, longitudeDelta: 60.0)
    ))
    
    // MARK: - BODY
    var body: some View {
        Map(position: $cameraPosition) {
            
        }
        .overlay(alignment: .topTrailing, content: {
            NavigationLink {
                MapView()
            } label: {
                HStack {
                    Image(systemName: "mappin.circle")
                        .foregroundStyle(.white)
                        .imageScale(.large)
                    
                    Text("Location")
                        .foregroundStyle(.accent)
                        .fontWeight(.bold)
                } //: HSTack
                .padding(.vertical, 10)
                .padding(.horizontal, 14)
                .background(.black.opacity(0.4))
                .clipShape(.rect(cornerRadius: 12))
            } //: Navigation
            .padding(12)
        })
        .frame(height: 256)
        .clipShape(.rect(cornerRadius: 12))
    }
}

#Preview {
    InsetMapViewModels()
}
