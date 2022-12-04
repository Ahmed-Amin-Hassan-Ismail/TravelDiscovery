//
//  PopularDestinationsView.swift
//  TravelDiscovery
//
//  Created by Ahmed Amin on 04/12/2022.
//

import SwiftUI

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
                    ForEach(Destination.allDestinations) { destination in
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
                        .background(Color.white)
                        .cornerRadius(10)
                        .shadow(color: Color(white: 0.9) ,radius: 4)
                        .padding(.bottom)
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

struct PopularDestinationsView_Previews: PreviewProvider {
    static var previews: some View {
        PopularDestinationsView()
    }
}
