//
//  DiscoverView.swift
//  TravelDiscovery
//
//  Created by Ahmed Amin on 04/12/2022.
//

import SwiftUI

struct DiscoverView: View {
    
    //MARK: - Init
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [
            .foregroundColor : UIColor.white
        ]
    }
    
    //MARK: - Body
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color.orange, Color.red]),
                               startPoint: .top,
                               endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
                
                
                Color(white: 0.95)
                    .offset(y: 400)
                
                ScrollView {
                    
                    HStack {
                        Image(systemName: "magnifyingglass")
                        Text("Where do you want to go?")
                        Spacer()
                    }
                    .font(.system(size: 14, design: .rounded))
                    .foregroundColor(.white)
                    .padding(10)
                    .background(Color(white: 1, opacity: 0.3))
                    .cornerRadius(10)
                    .padding(.horizontal)
                    .padding([.top, .bottom], 10)
                    
                    
                    DiscoverCategoriesView()
                    
                        .padding(.bottom, 32)
                    
                    VStack {
                        PopularDestinationsView()
                        
                        PopularRestaurantsView()
                        
                        TrendingCategoriesView()
                    }
                    .background(Color(white: 0.95))
                    .cornerRadius(15)
                }
                .navigationTitle("Discover")
            }
        }
    }
}

struct DiscoverView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverView()
    }
}
