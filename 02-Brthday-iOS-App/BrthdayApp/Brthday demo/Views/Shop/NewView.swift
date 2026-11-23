//
//  NewView.swift
//  Brthday demo
//
//  Created by Jaden Smith on 2023-05-31.
//

import SwiftUI

struct NewView: View {
    @Binding var currentShowingView: String
    var body: some View {
        ZStack {
            ScrollView {
                ZStack {
                    Color.white.edgesIgnoringSafeArea(.all)
                    
                    VStack {
                        HStack (alignment: .center) {
                            Spacer()
                            Text("NEW RELEASES")
                                .foregroundColor(.black)
                                .font(.title2)
                                .bold()
                            
                            Spacer()
                        }
                        VStack {
                            RoundedRectangle(cornerRadius: 10)
                                .strokeBorder()
                                .frame(height: 1)
                        }
                        
                        Spacer()
                        ScrollView (.vertical, showsIndicators: false) {
                            VStack (alignment: .leading) {
                                HStack (alignment: .center) {
                                    Text("New Releases")
                                        .font(.title3)
                                        .foregroundColor(Color(.orange))
                                        .fontWeight(.bold)
                                        .fontDesign(.rounded)
                                        .padding(.horizontal)
                                }
                            }
                            ScrollView (.horizontal, showsIndicators: false) {
                                HStack {
                                    ForEach (0 ..< 5) { i in
                                        Text("Nothing new to see here!")
                                            .frame(width: 155, height: 200)
                                            .padding()
                                            .background(Color.gray)
                                            .cornerRadius(20.0)
                                            .shadow(radius: 3)
                                    }
                                }
                            }
                            
                            Spacer()
                            
                            VStack (alignment: .leading) {
                                HStack (alignment: .center) {
                                    Text("New Designs")
                                        .font(.title3)
                                        .foregroundColor(Color(.orange))
                                        .fontWeight(.bold)
                                        .fontDesign(.rounded)
                                        .padding(.horizontal)
                                }
                            }
                            ScrollView (.horizontal, showsIndicators: false) {
                                HStack {
                                    ForEach (1 ..< 5) { i in
                                        Image("design\(i)")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 300, height: 250)
                                            .padding()
                                            .background(Color.gray)
                                            .cornerRadius(20.0)
                                    }
                                }
                            }
                            ScrollView (.horizontal, showsIndicators: false) {
                                HStack {
                                    ForEach (5 ..< 9) { i in
                                        Image("design\(i)")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 300, height: 250)
                                            .padding()
                                            .background(Color.gray)
                                            .cornerRadius(20.0)
                                    }
                                }
                                .padding(.bottom)
                            }
                            Text ("11111111111111111")
                                .foregroundColor(.white)
                            Text ("11111111111111111")
                                .foregroundColor(.white)
                            Text ("11111111111111111")
                                .foregroundColor(.white)
                                
                        }
                        Spacer()
                        Spacer()
                    }
                }
            }
                        
            HStack {
                BottomNavBarItem(image: Image(systemName: "cart")) {withAnimation{self.currentShowingView = "CartView"}}
                    .foregroundColor(Color.black)
                BottomNavBarItem(image: Image(systemName: "house")) {withAnimation{self.currentShowingView = "HomeView"}}
                    .foregroundColor(Color.black)
                BottomNavBarItem(image: Image(systemName: "person.crop.circle")) {withAnimation{self.currentShowingView = "AccountView"}}
                    .foregroundColor(Color.black)
            }
            .padding()
            .background(Color.white)
            .clipShape(Capsule())
            .padding(.horizontal)
            .shadow(color: Color.black.opacity(0.15), radius: 8, x: 2, y: 6)
            .frame(maxHeight: .infinity, alignment: .bottom)
        }
    }
}
