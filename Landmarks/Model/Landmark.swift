//
//  Landmark.swift
//  Landmarks
//
//  Created by Adriano on 08/08/23.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool
    var isFeatured: Bool
    
    private var imageName: String
        var image: Image {
            Image(imageName)
        }
    
    var category: Category
        enum Category: String, CaseIterable, Codable {
            case lakes = "Lakes"
            case rivers = "Rivers"
            case mountains = "Mountains"
        }
    
    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }


    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
