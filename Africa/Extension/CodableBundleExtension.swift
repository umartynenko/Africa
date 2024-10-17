//
//  CodableBundleExtension.swift
//  Africa
//
//  Created by Uriy Martynenko on 17.10.2024.
//

import Foundation


extension Bundle {
    func decode<T: Codable>(_ file: String ) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Couldn't find file \(file)")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Couldn't read file \(file)")
        }
        
        let decoder = JSONDecoder()
        
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Couldn't decode file \(file)")
        }
        
        return loaded
    }
}
