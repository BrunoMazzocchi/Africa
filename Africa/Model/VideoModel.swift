//
//  VideoModel.swift
//  Africa
//
//  Created by Bruno Mazzocchi on 20/10/24.
//

import Foundation

struct VideoModel: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    var thumbnail: String {
        "video-\(id)"
    }
}

let videoList: [VideoModel] = Bundle.main.decode("videos.json")
