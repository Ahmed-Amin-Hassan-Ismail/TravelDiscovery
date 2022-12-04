//
//  TrendingCategoryModel.swift
//  TravelDiscovery
//
//  Created by Ahmed Amin on 04/12/2022.
//

import Foundation


struct TrendingCategoryModel: Identifiable {
    var id = UUID().uuidString
    var name: String
    var imageName: String
    
    
    static let allTrendingUsers: [TrendingCategoryModel] = [
        .init(name: "Chat Bot", imageName: "ChatBot"),
        .init(name: "Chat Bot", imageName: "Paris"),
        .init(name: "Chat Bot", imageName: "Place"),
        .init(name: "Chat Bot", imageName: "City"),
    ]
}
