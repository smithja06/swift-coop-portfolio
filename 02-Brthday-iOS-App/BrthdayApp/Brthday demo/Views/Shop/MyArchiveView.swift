//
//  MyArchiveView.swift
//  Brthday demo
//
//  Created by Jaden Smith on 2023-05-30.
//

import SwiftUI

struct MyArchiveView: View {
    @Binding var currentShowingView: String
    var body: some View {
        ZStack {
            ScrollView {
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
                        
                        Text("MY ARCHIVE")
                            .foregroundColor(.black)
                            .font(.title3)
                            .bold()
                            .padding(.leading)
                            .padding(.trailing)
                            .padding(.leading)
                            .padding(.trailing)
                            .padding(.leading)
                            .padding(.trailing)
                            .padding(.leading)
                            .padding(.trailing)
                        
                        Spacer()
                        
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
                            .padding(.bottom)
                    }
                    
                    Spacer()
                    
                    HStack {
                        Button(action: {
                            withAnimation {
                                self.currentShowingView = "ImageView"
                            }
                        }) {
                            Image("cameraPhoto")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 150, height: 300)
                                .padding()
                                .background(Color.gray)
                                .cornerRadius(20.0)
                        }
                        .padding(.leading)
                        Spacer()
                    }
                }
                Spacer()
            }
        }
    }
}
