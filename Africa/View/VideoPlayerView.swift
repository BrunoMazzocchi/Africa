//
//  VideoPlayerView.swift
//  Africa
//
//  Created by Bruno Mazzocchi on 20/10/24.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    
    var videoSelectd: String
    var videoTitle: String
    
    var body: some View {
        VStack {
            VideoPlayer(player: playVideo(fileName: videoSelectd, fileFormat: "mp4")) {
                // Title
                
            }
            .overlay (
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32)
                    .padding(.top, 6)
                    .padding(.horizontal, 8)
                , alignment: .topLeading
            )
        }
        .accentColor(.accentColor)
        .navigationBarTitle(videoTitle, displayMode: .inline)
    }
}

#Preview {
    VideoPlayerView(videoSelectd: "lion", videoTitle: "Lion")
}
