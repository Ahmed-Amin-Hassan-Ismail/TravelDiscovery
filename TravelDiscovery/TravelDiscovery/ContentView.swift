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
                
                PopularDestinationsView()
                
                PopularRestaurantsView()
                
                TrendingCategoriesView()
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

//MARK: - Discover Categories View
struct DiscoverCategoriesView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack( alignment: .top, spacing: 14) {
                ForEach(DiscoverCategoryModel.allCategories) { category in
                    VStack(spacing: 4) {
                        Image(systemName: category.imageName)
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                            .frame(width: 64, height: 64)
                            .background(Color.gray)
                            .cornerRadius(64)
                            .shadow(color: .gray, radius: 4, x: 0, y: 2)
                        
                        Text(category.name)
                            .font(.system(size: 12, weight: .semibold, design: .rounded))
                            .multilineTextAlignment(.center)
                    }
                    .frame(width: 68)
                }
            }
            .padding(.horizontal)
        }
    }
}

//MARK: - Popular Destinations View
struct PopularDestinationsView: View {
    var body: some View {
        VStack(spacing: 10) {
            HStack {
                Text("Popular destinations")
                    .font(.system(size: 14, weight: .semibold, design: .rounded))
                Spacer()
                Text("See all")
                    .font(.system(size: 12, weight: .semibold, design: .rounded))
            }
            .padding(.horizontal)
            .padding(.top)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 8) {
                    ForEach(0..<5, id: \.self) { num in
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(.gray)
                            .frame(width: 125, height: 150)
                            .shadow(color: .gray, radius: 4, x: 0.0, y: 2.0)
                            .padding(.bottom)
                            
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}


//MARK: - Popular Restaurants View
struct PopularRestaurantsView: View {
    var body: some View {
        VStack(spacing: 10) {
            HStack {
                Text("Popular places to eat")
                    .font(.system(size: 14, weight: .semibold, design: .rounded))
                Spacer()
                Text("See all")
                    .font(.system(size: 12, weight: .semibold, design: .rounded))
            }
            .padding(.horizontal)
            .padding(.top)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 8) {
                    ForEach(0..<5, id: \.self) { num in
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(.gray)
                            .frame(width: 180, height: 65)
                            .shadow(color: .gray, radius: 4, x: 0.0, y: 2.0)
                            .padding(.bottom)
                            
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

//MARK: - Trending Categories View
struct TrendingCategoriesView: View {
    var body: some View {
        VStack(spacing: 10) {
            HStack {
                Text("Trending Creators")
                    .font(.system(size: 14, weight: .semibold, design: .rounded))
                Spacer()
                Text("See all")
                    .font(.system(size: 12, weight: .semibold, design: .rounded))
            }
            .padding(.horizontal)
            .padding(.top)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 8) {
                    ForEach(0..<10, id: \.self) { num in
                        Circle()
                            .frame(width: 50, height: 50)
                            .foregroundColor(.gray)
                            .shadow(color: .gray, radius: 4, x: 0, y: 2)
                            .padding(.bottom)
                            
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}
