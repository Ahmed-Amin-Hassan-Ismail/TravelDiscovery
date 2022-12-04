//
//  TileModifier.swift
//  TravelDiscovery
//
//  Created by Ahmed Amin on 04/12/2022.
//

import SwiftUI


struct TileModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .background(Color.white)
            .cornerRadius(10)
            .shadow(color: Color(white: 0.9) ,radius: 4)
    }
}
