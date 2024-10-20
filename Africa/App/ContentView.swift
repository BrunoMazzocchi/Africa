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
    @State private var isGridViewActive: Bool = false
    
    @State private var gridLayout: [GridItem] = [ GridItem(.flexible()) ]
    @State private var gridColumn: Int = 1
    @State private var toolbarIcon: String = "square.grid.2x2"
    
    func gridSwitch() {
        gridLayout = Array(repeating: .init(.flexible()), count: gridLayout.count % 3 + 1)
        gridColumn = gridLayout.count
        
        switch gridColumn {
        case 1:
            toolbarIcon = "square.grid.2x2"
        case 2:
            toolbarIcon = "square.grid.3x2"
        case 3:
            toolbarIcon = "rectangle.grid.1x2"
        default:
            toolbarIcon = "square.grid.2x2"
        }
    }
    
    var body: some View {
        NavigationView {
            Group {
                if !isGridViewActive {
                    List {
                        CoverImageView()
                            .frame(height: 300)
                            .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                        
                        ForEach(animals) { animal in
                            NavigationLink(destination: AnimalDetailView(animal: animal)) {
                                AnimalListItemView(animal: animal)
                            }
                        }
                    }
                } else {
                    ScrollView(.vertical, showsIndicators: false) {
                        LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10) {
                            ForEach(animals) { animal in
                                
                                NavigationLink(destination: AnimalDetailView(animal: animal)) {
                                    AnimalGridView(animal: animal)
                                }
                            }
                        }
                    }
                }
                
            }
            .listStyle(PlainListStyle())
            
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        isGridViewActive = false
                    }) {
                        Image(systemName: "square.fill.text.grid.1x2")
                            .font(.title2)
                            .foregroundColor(isGridViewActive ? .primary : .accentColor)
                    }
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    
                    
                    
                    Button(action: {
                        isGridViewActive = true
                        
                        gridSwitch()
                    }) {
                        Image(systemName: toolbarIcon)
                            .font(.title2)
                            .foregroundColor(isGridViewActive ? .accentColor : .primary)
                    }
                }
            }
            .navigationBarTitle("Africa", displayMode: .large)
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
