//
//  HomeScreen.swift
//  Shopping
//
//  Created by Sai Lakshmi on 9/22/22.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        
        ZStack {
            VStack(alignment: .leading, spacing: 10) {
                HStack {
                    Image(systemName: "line.3.horizontal")
                    Spacer()
                    Image(systemName: "cart.badge.plus")
                }
                .font(.system(.title))
                
                Text("Hey")
                    .font(.title)
                    .fontWeight(.bold)
                Text("Find Fresh Fruits That You Want")
                    
                RoundedRectangle(cornerRadius: 15)
                    .fill(.gray.opacity(0.3))
                    . frame(width: 350, height: 50, alignment: .center)
                    .overlay(
                        HStack() {
                            Image(systemName: "magnifyingglass")
                            Text("Search fresh fruits")
                                .foregroundColor(.gray)
                                .multilineTextAlignment(.leading)
                            Spacer()
                        } .padding()
                    )
                Text("Top Selling")
                    .font(.title)
                    .fontWeight(.bold)
                   // .padding(.top)
                TopSellingView()
                   // .padding(.bottom)
                Text(" Near You")
                    .font(.title)
                    .fontWeight(.bold)
                NearYouView()
                Spacer()
                
            }
            .padding()
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
