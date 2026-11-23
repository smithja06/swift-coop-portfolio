//
//  HomeView.swift
//  Brthday demo
//
//  Created by Jaden Smith on 2023-05-09.
//

import SwiftUI
struct HomeView: View {
    @Binding var currentShowingView: String
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        NavigationView {
            ZStack {
                Color.white.edgesIgnoringSafeArea(.all)
                
                VStack {
                    HStack {
                    Group {
                        Spacer()
                        Image("smallBrthdayLogo")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50)
                        
                        Spacer()
                            .padding()
                        
                        Text("EXPLORE")
                            .foregroundColor(.black)
                            .font(.title2)
                            .bold()
                        
                        Button(action: {
                            withAnimation {
                                self.currentShowingView = "DropDownMenu"
                            }
                        }) {
                            Image(systemName:"line.3.horizontal")
                                .font(.largeTitle)
                                .foregroundColor(.black)
                                .bold()
                        }
                        Spacer()
                    }
                    }
                    VStack {
                        RoundedRectangle(cornerRadius: 10)
                            .strokeBorder()
                            .frame(height: 1)
                    }
                    
                    Spacer()
                    VStack {
                        Image("chocHoodieFront")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 250)
                            .padding()
                        Image("chocHoodieBack")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 250)
                    }
                    
                    .padding()
                    .padding(.top)
                    
                    Spacer()
                    
                Group {
                    Text("HOODIE OF THE WEEK")
                        .foregroundColor(.black)
                        .font(.title3)
                        .bold()
                    
                        .frame(maxWidth: .infinity)
                        .padding()
                    
                        .background( RoundedRectangle(cornerRadius: 10)
                            .strokeBorder()
                                     
                        )
                        .padding(.horizontal)
                        .padding(.bottom)
                        .padding(.bottom)
                        .padding(.bottom)
                }
                    Spacer()
                    Spacer()
                    
                }
                
                HStack {
                    BottomNavBarItem(image: Image(systemName: "gift")) {withAnimation{self.currentShowingView = "NewView"}}
                        .foregroundColor(Color.black)
                    BottomNavBarItem(image: Image(systemName: "cart")) {withAnimation{self.currentShowingView = "CartView"}}
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
}
struct BottomNavBarItem: View {
    let image: Image
    let action: ()-> Void
    var body: some View {
        Button(action: action, label : {
            image
                .frame(maxWidth: .infinity)
        })
    }
}

