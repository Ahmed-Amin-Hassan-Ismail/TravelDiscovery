//
//  Category.swift
//  TravelDiscovery
//
//  Created by Ahmed Amin on 04/12/2022.
//

import Foundation


struct Category: Identifiable {
    var id = UUID().uuidString
    var name: String
    var imageName: String
    
    static let allCategories: [Category] = [
        Category(name: "Art", imageName: "paintpalette.fill"),
        Category(name: "Soprt", imageName: "sportscourt.fill"),
        Category(name: "Live Events", imageName: "music.mic"),
        Category(name: "Food", imageName: "tray.fill"),
        Category(name: "History", imageName: "books.vertical.fill")
    ]
}
