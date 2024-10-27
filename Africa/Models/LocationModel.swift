//
//  LocationModel.swift
//  Africa
//
//  Created by Uriy Martynenko on 27.10.2024.
//

import Foundation
import MapKit


struct NationalParkLocation: Codable, Identifiable {
    let id: String
    let name: String
    let image: String
    let latitude: Double
    let longitude: Double
    
    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}