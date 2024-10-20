//
//  NationalParkLocation.swift
//  Africa
//
//  Created by Bruno Mazzocchi on 20/10/24.
//

import Foundation
import MapKit

struct NationalParkLocation: Identifiable, Codable {
    var id: String
    var name: String
    var image: String
    var latitude: Double
    var longitude: Double
    
    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}

let nationalParks: [NationalParkLocation] = Bundle.main.decode("locations.json")
