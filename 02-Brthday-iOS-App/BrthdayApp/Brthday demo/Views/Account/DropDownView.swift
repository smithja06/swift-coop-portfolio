//
//  DropDownView.swift
//  Brthday demo
//
//  Created by Jaden Smith on 2023-05-12.
//

import SwiftUI
import FirebaseAuth

struct DropDownView: View {
    @Binding var currentShowingView: String
    @AppStorage("uid") var userID: String = ""
    var body: some View {
        ZStack {
            Color.white.edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack {
                    Spacer()
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
                    
                    Text("EXPLORE")
                        .foregroundColor(.black)
                        .font(.title2)
                        .bold()
                        .padding()
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
                    Button(action: {
                        withAnimation {
                            self.currentShowingView = "ShopView"
                        }
                    }) {
                    Group {
                        Text("SHOP")
                            .foregroundColor(.black)
                            .font(.title3)
                            .bold()
                        
                            .frame(maxWidth: .infinity)
                            .padding()
                        
                            .background(
                                RoundedRectangle(cornerRadius: 20)
                                    .strokeBorder()
                                    .frame(width: 350, height: 60)
                                    .foregroundColor(.black)
                            )
                            .padding(.horizontal)
                    }
                }
                    Button(action: {
                        withAnimation {
                            self.currentShowingView = "ContactView"
                        }
                    }) {
                    Group {
                        Text("CONTACT")
                            .foregroundColor(.black)
                            .font(.title3)
                            .bold()
                        
                            .frame(maxWidth: .infinity)
                            .padding()
                        
                            .background(
                                RoundedRectangle(cornerRadius: 20)
                                    .strokeBorder()
                                    .frame(width: 350, height: 60)
                                    .foregroundColor(.black)
                            )
                            .padding(.horizontal)
                    }
                }
                    Button(action: {
                        withAnimation {
                            self.currentShowingView = "AboutView"
                        }
                    }) {
                    Group {
                        Text("ABOUT")
                            .foregroundColor(.black)
                            .font(.title3)
                            .bold()
                        
                            .frame(maxWidth: .infinity)
                            .padding()
                        
                            .background(
                                RoundedRectangle(cornerRadius: 20)
                                    .strokeBorder()
                                    .frame(width: 350, height: 60)
                                    .foregroundColor(.black)
                            )
                            .padding(.horizontal)
                    }
                }
                    Button(action: {
                        withAnimation {
                            self.currentShowingView = "PrivacyView"
                        }
                    }) {
                    Group {
                        Text("PRIVACY")
                            .foregroundColor(.black)
                            .font(.title3)
                            .bold()
                        
                            .frame(maxWidth: .infinity)
                            .padding()
                        
                            .background(
                                RoundedRectangle(cornerRadius: 20)
                                    .strokeBorder()
                                    .frame(width: 350, height: 60)
                                    .foregroundColor(.black)
                            )
                            .padding(.horizontal)
                    }
                }
                    Button(action: {
                        withAnimation {
                            self.currentShowingView = "TermsView"
                        }
                    }) {
                    Group {
                        Text("TERMS")
                            .foregroundColor(.black)
                            .font(.title3)
                            .bold()
                        
                            .frame(maxWidth: .infinity)
                            .padding()
                        
                            .background(
                                RoundedRectangle(cornerRadius: 20)
                                    .strokeBorder()
                                    .frame(width: 350, height: 60)
                                    .foregroundColor(.black)
                            )
                            .padding(.horizontal)
                    }
                }
                    Button(action: {
                    withAnimation {
                        self.currentShowingView = "Returns&Exchanges"
                    }
                    }) {
                    Group {
                        Text("RETURNS & EXCHANGES")
                            .foregroundColor(.black)
                            .font(.title3)
                            .bold()
                        
                            .frame(maxWidth: .infinity)
                            .padding()
                        
                            .background(
                                RoundedRectangle(cornerRadius: 20)
                                    .strokeBorder()
                                    .frame(width: 350, height: 60)
                                    .foregroundColor(.black)
                            )
                            .padding(.horizontal)
                    }
                }
                    Button(action: {
                        withAnimation {
                            self.currentShowingView = "MyArchiveView"
                        }
                    }) {
                    Group {
                        Text("MY ARCHIVE")
                            .foregroundColor(.black)
                            .font(.title3)
                            .bold()
                        
                            .frame(maxWidth: .infinity)
                            .padding()
                        
                            .background(
                                RoundedRectangle(cornerRadius: 20)
                                    .strokeBorder()
                                    .frame(width: 350, height: 60)
                                    .foregroundColor(.black)
                            )
                            .padding(.horizontal)
                    }
                }
                    Button(action: {
                        let firebaseAuth = Auth.auth()
                        do {
                          try firebaseAuth.signOut()
                            withAnimation{
                                userID = ""
                            }
                        } catch let signOutError as NSError {
                            print("Error signing out: %@", signOutError)
                        }
                        self.currentShowingView = "login"
                    }) {
                    Group {
                        Text("SIGN OUT")
                            .foregroundColor(.black)
                            .font(.title3)
                            .bold()
                        
                            .frame(maxWidth: .infinity)
                            .padding()
                        
                            .background(
                                RoundedRectangle(cornerRadius: 20)
                                    .strokeBorder()
                                    .frame(width: 350, height: 60)
                                    .foregroundColor(.black)
                            )
                            .padding(.horizontal)
                    }
                        Spacer()
                    }
                    }
                }
            }
            ZStack {
                VStack {
                    Spacer()
                    HStack {
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
    }

