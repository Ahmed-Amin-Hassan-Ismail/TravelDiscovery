//
//  DiscoverCategoriesView.swift
//  TravelDiscovery
//
//  Created by Ahmed Amin on 04/12/2022.
//

import SwiftUI

struct DiscoverCategoriesView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack( alignment: .top, spacing: 14) {
                ForEach(Category.allCategories) { category in
                    VStack(spacing: 4) {
                        Image(systemName: category.imageName)
                            .font(.system(size: 22))
                            .foregroundColor(.orange)
                            .frame(width: 64, height: 64)
                            .background(Color.white)
                            .cornerRadius(64)
                        
                        Text(category.name)
                            .font(.system(size: 12, weight: .semibold, design: .rounded))
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                    }
                    .frame(width: 68)
                }
            }
            .padding(.horizontal)
        }
    }
}


struct DiscoverCategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverCategoriesView()
    }
}
