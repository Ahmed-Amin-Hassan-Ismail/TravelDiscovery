//
//  View+EXT.swift
//  TravelDiscovery
//
//  Created by Ahmed Amin on 04/12/2022.
//

import SwiftUI

extension View {
    func asTile() -> some View {
        modifier(TileModifier())
    }
}
