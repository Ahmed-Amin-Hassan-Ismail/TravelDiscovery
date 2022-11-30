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
//MARK: - DiscoverCategoryModel
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

//MARK: - Popular Destinations Model
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
                    ForEach(PoplularDestinationsModel.allDestinations) { destination in
                        VStack(alignment: .leading) {
                            Image(destination.imageName)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 130, height: 130)
                                .cornerRadius(5)
                                .padding(.horizontal, 6)
                                .padding(.vertical, 6)
                            
                            
                            Text(destination.name)
                                .font(.system(size: 12, weight: .semibold))
                                .padding(.horizontal, 8)
                            
                            Text(destination.country)
                                .font(.system(size: 12, weight: .semibold))
                                .foregroundColor(.gray)
                                .padding(.horizontal, 8)
                                .padding(.bottom, 8)
                        }
                        .background(Color(white: 0.9))
                        .cornerRadius(10)
                        .shadow(radius: 4)
                        .padding(.bottom)
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

//MARK: -
struct PopularRestaurantsModel: Identifiable {
    var id = UUID().uuidString
    var name: String
    var imageName: String
    
    static let allRestaurants: [PopularRestaurantsModel] = [
        .init(name: "Japan's Finest Tapas", imageName: "Paris"),
        .init(name: "Bar & Grill", imageName: "Place"),
    ]
    
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
                    ForEach(PopularRestaurantsModel.allRestaurants) { restaurant in
                        HStack(spacing: 8) {
                            Image(restaurant.imageName)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 60, height: 60)
                                .cornerRadius(5)
                                .padding(.vertical, 6)
                                .padding(.leading, 6)
                            
                            VStack(alignment: .leading, spacing: 6) {
                                HStack {
                                    Text(restaurant.name)
                                    
                                    Spacer()
                                    
                                    Button {
                                        
                                    } label: {
                                        Image(systemName: "ellipsis")
                                            .foregroundColor(.gray)
                                    }
                                }
                                
                                HStack {
                                    Image(systemName: "star.fill")
                                    Text("4.7 • sushi • $$")
                                }
                                
                                
                                Text("Tokyo, Japnan")
                                
                            }
                            .font(.system(size: 12, weight: .regular))
                            
                            Spacer()
                        }
                        .frame(width: 240)
                        .background(Color(white: 0.9, opacity: 1))
                        .cornerRadius(10)
                        .shadow(radius: 4)
                        .padding(.bottom)
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

//MARK: - TrendingCategoriesModel
struct TrendingCategoriesModel: Identifiable {
    var id = UUID().uuidString
    var name: String
    var imageName: String
    
    
    static let allTrendingUsers: [TrendingCategoriesModel] = [
        .init(name: "Chat Bot", imageName: "ChatBot"),
        .init(name: "Chat Bot", imageName: "Paris"),
        .init(name: "Chat Bot", imageName: "Place"),
        .init(name: "Chat Bot", imageName: "City"),
    ]
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
                HStack(alignment: .top, spacing: 12) {
                    ForEach(TrendingCategoriesModel.allTrendingUsers) { user in
                        VStack {
                            Image(user.imageName)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 60, height: 60)
                                .cornerRadius(60)
                            
                            Text(user.name)
                                .font(.system(size: 12, weight: .semibold))
                                .multilineTextAlignment(.center)
                        }
                        .frame(width: 65)
                        .shadow(radius: 4)
                        .padding(.bottom)
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}
