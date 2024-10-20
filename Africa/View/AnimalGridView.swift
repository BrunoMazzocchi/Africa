//
//  AnimalGridView.swift
//  Africa
//
//  Created by Bruno Mazzocchi on 20/10/24.
//

import SwiftUI

struct AnimalGridView: View {
    let animal: AnimalModel
    
    var body: some View {
        Image(animal.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

#Preview {
    AnimalGridView(animal: animalList.first!)
}
