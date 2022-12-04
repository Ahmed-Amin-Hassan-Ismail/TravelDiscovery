//
//  PopularRestaurantsView.swift
//  TravelDiscovery
//
//  Created by Ahmed Amin on 04/12/2022.
//

import SwiftUI

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
                    ForEach(Restaurant.allRestaurants) { restaurant in
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
                        .background(Color.white)
                        .cornerRadius(10)
                        .shadow(color: Color(white: 0.9, opacity: 1), radius: 4)
                        .padding(.bottom)
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

struct PopularRestaurantsView_Previews: PreviewProvider {
    static var previews: some View {
        PopularRestaurantsView()
    }
}
