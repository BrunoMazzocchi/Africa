//
//  ExternalWeblinkView.swift
//  Africa
//
//  Created by Bruno Mazzocchi on 20/10/24.
//

import SwiftUI

struct ExternalWeblinkView: View {
    let animal: AnimalModel
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
            Text("Wikipedia")
            Spacer()
                
                Group {
                    Image(systemName: "arrow.up.right.square")
                    
                    Link(animal.name, destination: (URL(string: animal.link) ?? URL(string: "https://wikipedia.org"))!)
                }
                .foregroundColor(.accentColor)
            }
        }
    }
}

#Preview {
    ExternalWeblinkView(animal: animalList.first!)
}
