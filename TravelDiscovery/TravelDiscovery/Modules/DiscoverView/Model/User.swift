//
//  User.swift
//  TravelDiscovery
//
//  Created by Ahmed Amin on 04/12/2022.
//

import Foundation


struct User: Identifiable {
    var id = UUID().uuidString
    var name: String
    var imageName: String
    
    
    static let allTrendingUsers: [User] = [
        .init(name: "Chat Bot", imageName: "ChatBot"),
        .init(name: "Chat Bot", imageName: "Paris"),
        .init(name: "Chat Bot", imageName: "Place"),
        .init(name: "Chat Bot", imageName: "City"),
    ]
}
