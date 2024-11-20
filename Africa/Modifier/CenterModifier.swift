//
//  CenterModifier.swift
//  Africa
//
//  Created by Uriy Martynenko on 20.11.2024.
//

import SwiftUI


struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            
            content
            
            Spacer()
        }
    }
}
