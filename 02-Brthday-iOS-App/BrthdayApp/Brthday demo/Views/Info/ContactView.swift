//
//  ContactView.swift
//  Brthday demo
//
//  Created by Jaden Smith on 2023-05-28.
//

import SwiftUI
import UIKit

struct ContactView: View {
    @State private var email: String = ""
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var message: String = ""
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
                    
                    Text("CONTACT")
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
                }
                Spacer()
                
                VStack {
                    Spacer()
                    HStack {
                        Text("CONTACT US")
                            .bold()
                            .foregroundColor(Color(.orange))
                            .font(.title3)
                    }
                    HStack {
                        TextField("First Name", text: $firstName)
                    }
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(lineWidth: 2)
                            .foregroundColor(.black)
                        
                    )
                    
                    .padding()
                    
                    HStack {
                        TextField("Last Name", text: $lastName)
                    }
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(lineWidth: 2)
                            .foregroundColor(.black)
                        
                    )
                    
                    .padding()
                    
                    
                    HStack {
                        Image(systemName: "mail")
                        TextField("Email", text: $email)
                        
                        Spacer()
                        
                        if(email.count != 0) {
                            
                            Image(systemName: email.isValidEmail() ? "checkmark" : "xmark")
                                .fontWeight(.bold)
                                .foregroundColor(email.isValidEmail() ? .green : .red)
                        }
                        
                    }
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(lineWidth: 2)
                            .foregroundColor(.black)
                        
                    )
                    
                    .padding()
                    Spacer()
                    
                    HStack {
                        TextField("Message", text: $message)
                            .multilineTextAlignment(.center)
                    }
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(lineWidth: 2)
                            .foregroundColor(.black)
                            .frame(height: 200)
                        
                    )
                    
                    .padding()
                    Spacer()
                    
                    HStack {
                        Button(action: {}, label: {
                            Text("Send Message")
                                .foregroundColor(Color(.white))
                                .bold()
                                .font(.title3)
                                .background(
                                    RoundedRectangle(cornerRadius: 40)
                                        .foregroundColor(Color(.orange))
                                        .frame(width: 350.0, height: 40.0)
                                    
                                )
                        })
                    }
                    .padding()
                }
                
            }
        }
    }
}

