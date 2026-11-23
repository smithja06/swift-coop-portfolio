//
//  TermsView.swift
//  Brthday demo
//
//  Created by Jaden Smith on 2023-05-30.
//

import SwiftUI

struct TermsView: View {
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
                    
                    Text("TERMS")
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
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack (alignment: .leading) {
                        Text("TERMS OF SERVICE")
                            .bold()
                            .foregroundColor(Color(.orange))
                            .font(.system(size: 30))
                            .padding()
                            .multilineTextAlignment(.leading)
                        
                        Text("OVERVIEW")
                            .underline()
                            .bold()
                            .font(.title3)
                            .padding(.leading)
                        
                        Text("THIS APP IS OPERATED BY BRTHDAY. THROUGHOUT THE APP, THE TERMS “WE”, “US” AND “OUR” REFER TO BRTHDAY. BRTHDAY OFFERS THIS APP, INCLUDING ALL INFORMATION, TOOLS AND SERVICES AVAILABLE FROM THIS APP TO YOU, THE USER, CONDITIONED UPON YOUR ACCEPTANCE OF ALL TERMS, CONDITIONS, POLICIES AND NOTICES STATED HERE.\nBY VISITING OUR APP AND/ OR PURCHASING SOMETHING FROM US, YOU ENGAGE IN OUR “SERVICE” AND AGREE TO BE BOUND BY THE FOLLOWING TERMS AND CONDITIONS (“TERMS OF SERVICE”, “TERMS”), INCLUDING THOSE ADDITIONAL TERMS AND CONDITIONS AND POLICIES REFERENCED HEREIN AND/OR AVAILABLE BY HYPERLINK. THESE TERMS OF SERVICE APPLY TO ALL USERS OF THE APP, INCLUDING WITHOUT LIMITATION USERS WHO ARE BROWSERS, VENDORS, CUSTOMERS, MERCHANTS, AND/ OR CONTRIBUTORS OF CONTENT.\nPLEASE READ THESE TERMS OF SERVICE CAREFULLY BEFORE ACCESSING OR USING OUR APP. BY ACCESSING OR USING ANY PART OF THE APP, YOU AGREE TO BE BOUND BY THESE TERMS OF SERVICE. IF YOU DO NOT AGREE TO ALL THE TERMS AND CONDITIONS OF THIS AGREEMENT, THEN YOU MAY NOT ACCESS THE APP OR USE ANY SERVICES. IF THESE TERMS OF SERVICE ARE CONSIDERED AN OFFER, ACCEPTANCE IS EXPRESSLY LIMITED TO THESE TERMS OF SERVICE.\nANY NEW FEATURES OR TOOLS WHICH ARE ADDED TO THE CURRENT STORE SHALL ALSO BE SUBJECT TO THE TERMS OF SERVICE. YOU CAN REVIEW THE MOST CURRENT VERSION OF THE TERMS OF SERVICE AT ANY TIME ON THIS PAGE. WE RESERVE THE RIGHT TO UPDATE, CHANGE OR REPLACE ANY PART OF THESE TERMS OF SERVICE BY POSTING UPDATES AND/OR CHANGES TO OUR APP. IT IS YOUR RESPONSIBILITY TO CHECK THIS PAGE PERIODICALLY FOR CHANGES. YOUR CONTINUED USE OF OR ACCESS TO THE APP FOLLOWING THE POSTING OF ANY CHANGES CONSTITUTES ACCEPTANCE OF THOSE CHANGES.")
                            .font(.body)
                            .padding(.bottom)
                            .padding(.leading)
                        
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
    }
}
