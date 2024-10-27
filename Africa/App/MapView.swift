//
//  MapView.swift
//  Africa
//
//  Created by Uriy Martynenko on 13.10.2024.
//

import SwiftUI
import MapKit


struct MapView: View {
    // MARK: - PROPERTIES
    @State private var region: MKCoordinateRegion = {
        var mapCoordinates = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)
        
        return mapRegion
    }()
    
    let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
    
    // MARK: - BODY
    var body: some View {
        // MARK: - No1 BASIC MAP
//        Map(coordinateRegion: $region)
        
        // MARK: - No2 ADVANCED MAP
        Map(coordinateRegion: $region, annotationItems: locations, annotationContent: { item in
//            MapAnnotation(coordinate: item.location) {
//                Image(.logo)
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: 32, height: 32, alignment: .center)
//            } //: MapAnnotation
            MapAnnotation(coordinate: item.location) {
                MapAnnotationViewModel(location: item)
            }
        }) // Map
        .overlay(
            HStack(alignment: .center, spacing: 12) {
                Image(.compass)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 48, height: 48, alignment: .center)
                
                VStack(alignment: .leading, spacing: 3) {
                    HStack {
                        Text("Latitude:")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundStyle(.accent)
                        
                        Spacer()
                        
                        Text("\(region.center.latitude)")
                            .font(.footnote)
                            .foregroundStyle(.white)
                    } //: HStack
                    
                    Divider()
                    
                    HStack {
                        Text("Longitude:")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundStyle(.accent)
                        
                        Spacer()
                        
                        Text("\(region.center.longitude)")
                            .font(.footnote)
                            .foregroundStyle(.white)
                    } //: HStack
                } //: VStack
            } //: HStack
                .padding(.vertical, 12)
                .padding(.horizontal, 16)
                .background(Color.black
                    .clipShape(.rect(cornerRadius: 8))
                    .opacity(0.6))
                .padding(),
            alignment: .top
        )
    }
}

#Preview {
    MapView()
}
