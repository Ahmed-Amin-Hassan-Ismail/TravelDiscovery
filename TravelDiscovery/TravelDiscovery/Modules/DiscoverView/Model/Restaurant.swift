//
//  Restaurant.swift
//  TravelDiscovery
//
//  Created by Ahmed Amin on 04/12/2022.
//

import Foundation


struct Restaurant: Identifiable {
    var id = UUID().uuidString
    var name: String
    var imageName: String
    
    static let allRestaurants: [Restaurant] = [
        .init(name: "Japan's Finest Tapas", imageName: "Paris"),
        .init(name: "Bar & Grill", imageName: "Place"),
    ]
    
}
