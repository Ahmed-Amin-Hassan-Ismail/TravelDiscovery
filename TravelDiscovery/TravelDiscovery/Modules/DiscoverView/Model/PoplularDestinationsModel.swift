//
//  PoplularDestinationsModel.swift
//  TravelDiscovery
//
//  Created by Ahmed Amin on 04/12/2022.
//

import Foundation


struct PoplularDestinationsModel: Identifiable {
    var id = UUID().uuidString
    var imageName: String
    var name: String
    var country: String
    
    static let allDestinations: [PoplularDestinationsModel] = [
        .init(imageName: "Paris", name: "Paris", country: "France"),
        .init(imageName: "Place", name: "Tokyo", country: "Japan"),
        .init(imageName: "City", name: "New York", country: "US"),
        .init(imageName: "Paris", name: "Paris", country: "France"),
    ]
}
