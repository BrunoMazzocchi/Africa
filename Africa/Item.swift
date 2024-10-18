//
//  Item.swift
//  Africa
//
//  Created by Bruno Mazzocchi on 18/10/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
