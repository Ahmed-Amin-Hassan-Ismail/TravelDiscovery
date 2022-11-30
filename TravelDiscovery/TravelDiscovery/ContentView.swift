//
//  ContentView.swift
//  TravelDiscovery
//
//  Created by Ahmed Amin on 30/11/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                DiscoverCategoriesView()
            }
            .navigationTitle("Discover")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//MARK: - Discover Categories View
struct DiscoverCategoriesView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 8) {
                ForEach(0..<5, id: \.self) { index in
                    VStack(spacing: 4) {
                        Circle()
                            .frame(width: 50, height: 50)
                            .foregroundColor(.gray)
                        
                        Text("Art")
                            .font(.system(size: 12, weight: .semibold, design: .rounded))
                    }
                }
            }
            .padding(.horizontal)
        }
    }
}
