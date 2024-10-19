//
//  ExternalWeblinkViewModel.swift
//  Africa
//
//  Created by Uriy Martynenko on 19.10.2024.
//

import SwiftUI

struct ExternalWeblinkViewModel: View {
    // MARK: - PROOERTIES
    let animal: AnimalModel
    
    // MARK: - BODY
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                
                Text("Wikipedia")
                
                Spacer()
                
                Group {
                    Image(systemName: "arrow.up.right.square")
                    
                    Link(animal.name, destination: (URL(string: animal.link) ?? URL(string: "https://www.wikipedia.org/"))!)
                }
                .foregroundStyle(.accent)
            } //: HSTack
        } //: GroupBox
    }
}

#Preview {
    let animals: [AnimalModel] = Bundle.main.decode("animals.json")
    
    ExternalWeblinkViewModel(animal: animals.first!)
}
