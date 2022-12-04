//
//  TrendingCategoriesView.swift
//  TravelDiscovery
//
//  Created by Ahmed Amin on 04/12/2022.
//

import SwiftUI

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
                    ForEach(User.allTrendingUsers) { user in
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

struct TrendingCategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        TrendingCategoriesView()
    }
}
