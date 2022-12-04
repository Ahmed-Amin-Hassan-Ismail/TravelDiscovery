//
//  PopularRestaurantsModel.swift
//  TravelDiscovery
//
//  Created by Ahmed Amin on 04/12/2022.
//

import Foundation


struct PopularRestaurantsModel: Identifiable {
    var id = UUID().uuidString
    var name: String
    var imageName: String
    
    static let allRestaurants: [PopularRestaurantsModel] = [
        .init(name: "Japan's Finest Tapas", imageName: "Paris"),
        .init(name: "Bar & Grill", imageName: "Place"),
    ]
    
}
