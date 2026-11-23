//
//  AboutView.swift
//  Brthday demo
//
//  Created by Jaden Smith on 2023-05-28.
//

import SwiftUI

struct AboutView: View {
    @Binding var currentShowingView: String
    var body: some View {
        ZStack {
            Color.white.edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack {
                Group {
                    Spacer()
                    Button(action: {
                        withAnimation {
                            self.currentShowingView = "HomeView"
                        }
                    }) {
                        Image("smallBrthdayLogo")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50)
                    }
                    
                    Spacer()
                        .padding()
                    
                    Text("ABOUT")
                        .foregroundColor(.black)
                        .font(.title3)
                        .bold()
                    
                    Spacer()
                        .padding()
                    
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
                    RoundedRectangle(cornerRadius: 20)
                        .strokeBorder()
                        .frame(height: 1)
                }
                
                Spacer()
                
                Text("ABOUT US")
                    .bold()
                    .foregroundColor(Color(.orange))
                    .font(.title3)
                    .padding()
                
                Text("AN ENTERPRISE THAT IS UNIVERSAL, NEVER HARMING, LIMITING OR ENDANGERING – THAT’S WHAT BRTHDAY IS ALL ABOUT.\n\nALL ITEMS CREATED BY BRTHDAY ARE HANDLED WITH CARE AND MADE BY HAND.\n\nBRTHDAY CREATES COLLECTIBLES FOR A FUTURE PROJECT. TRADE, GIFT, SHARE. THE FUTURE IS WHAT WE MAKE IT.")
                    .font(.title3)
                    .bold()
                    .padding()

                Spacer()
                Spacer()
                
                Group {
                    Image("brthdayName")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300, height: 70)
                        .foregroundColor(.black)
                        .font(.title3)
                        .bold()
                    
                        .frame(maxWidth: .infinity)
                        .padding()
                    
                        .background( RoundedRectangle(cornerRadius: 10)
                            .strokeBorder()
                                     
                        )
                        .padding(.horizontal)
                }
            }
        }
    }
}
