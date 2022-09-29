//
//  OnboardScreenView.swift
//  Shopping
//
//  Created by Sai Lakshmi on 9/22/22.
//

import SwiftUI

struct OnBoardScreenView: View {
    var body: some View {
        NavigationView {
            
            VStack(spacing: 30) {
                
                Spacer()
               
                Image("woman")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                   // .scaledToFill()
                    .padding()
                VStack(alignment: .leading, spacing: 10) {
                    Text("Order Your Favourite Fruits")
                        .fontWeight(.bold)
                        .font(.system(.largeTitle))
                    Text("Eat fresh fruits and be healty")
                        .foregroundColor(.black.opacity(0.7))
                        .font(.system(.title3))
                }
                Spacer()
                NavigationLink(destination: HomeScreen()) {
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color("6"))
                        .frame(width: 280, height: 60, alignment: .trailing)
                        .overlay(
                            HStack(spacing: 10) {
                                Text("Next")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    
                                Image(systemName: "chevron.right")
                            }
                            .foregroundColor(.black)
                        )
                }
                Spacer()
            }
            .padding()
            
        }
    }
}

struct OnBoardScreenView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardScreenView()
    }
}
