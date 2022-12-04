//
//  DiscoverCategoryModel.swift
//  TravelDiscovery
//
//  Created by Ahmed Amin on 04/12/2022.
//

import Foundation


struct DiscoverCategoryModel: Identifiable {
    var id = UUID().uuidString
    var name: String
    var imageName: String
    
    static let allCategories: [DiscoverCategoryModel] = [
        DiscoverCategoryModel(name: "Art", imageName: "paintpalette.fill"),
        DiscoverCategoryModel(name: "Soprt", imageName: "sportscourt.fill"),
        DiscoverCategoryModel(name: "Live Events", imageName: "music.mic"),
        DiscoverCategoryModel(name: "Food", imageName: "tray.fill"),
        DiscoverCategoryModel(name: "History", imageName: "books.vertical.fill")
    ]
}
