//
//  ContentView.swift
//  Africa
//
//  Created by Bruno Mazzocchi on 18/10/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    private let animals: [AnimalModel] = Bundle.main.decode("animals.json")
    var body: some View {
        NavigationView {
            List {
                CoverImageView()
                    .frame(width: .infinity, height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                
                ForEach(animals) { animal in
                    NavigationLink(destination: AnimalDetailView(animal: animal)) {
                        AnimalListItemView(animal: animal)
                    }
                }
            }
            .listStyle(PlainListStyle())
        }
        .navigationBarTitle("Africa", displayMode: .large)
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
