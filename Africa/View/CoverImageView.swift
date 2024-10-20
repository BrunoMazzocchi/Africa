//
//  CoverImageView.swift
//  Africa
//
//  Created by Bruno Mazzocchi on 20/10/24.
//

import SwiftUI

struct CoverImageView: View {
    let coverImages: [CoverImageModel] = Bundle.main.decode("covers.json")
    
    var body: some View {
        TabView {
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                    .scaledToFill()
                
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.zero)
    }
}

#Preview {
    CoverImageView()
}
