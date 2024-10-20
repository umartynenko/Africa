//
//  VideoModel.swift
//  Africa
//
//  Created by Uriy Martynenko on 20.10.2024.
//

import Foundation


struct VideoModel: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    // Computed Property
    var thumbnail: String {
        "video-\(id)"
    }
}
