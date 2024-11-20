//
//  CreditsView.swift
//  Africa
//
//  Created by Uriy Martynenko on 20.11.2024.
//

import SwiftUI

struct CreditsView: View {
    var body: some View {
        VStack {
            Image("compass")
                .resizable()
                .scaledToFit()
                .frame(width: 128, height: 128)
            
            Text("""
Copyright © RobertP Petras
All right reserved
Better Apps ♡ Less Code
""")
            .font(.footnote)
            .multilineTextAlignment(.center)
        }
        .padding()
        .opacity(0.4)
    }
}

#Preview {
    CreditsView()
}
