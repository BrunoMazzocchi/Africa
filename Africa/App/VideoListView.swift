//
//  VideoListView.swift
//  Africa
//
//  Created by Bruno Mazzocchi on 18/10/24.
//

import SwiftUI

struct VideoListView: View {
    @State var videos: [VideoModel] = videoList
    
    let hapticImpact = UIImpactFeedbackGenerator(style: .light)
    
    var body: some View {
        NavigationView {
            List {
                ForEach(videos) { item in
                    NavigationLink(destination: VideoPlayerView(videoSelectd: item.id, videoTitle: item.name)) {
                        VideoListItemView(video: item)
                            .padding(.vertical, 8)
                    }
                }
            }
            .listStyle(GroupedListStyle())
            .navigationBarTitle("Videos", displayMode: .large)
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: {
                    videos.shuffle()
                    hapticImpact.impactOccurred()
                }) {
                    Image(systemName: "arrow.2.squarepath")
                }
            }
        }
    }
}

#Preview {
    VideoListView()
}
