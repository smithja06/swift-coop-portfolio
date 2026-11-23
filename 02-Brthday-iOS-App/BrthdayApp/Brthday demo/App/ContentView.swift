//
//  ContentView.swift
//  Brthday demo
//
//  Created by Jaden Smith on 2023-05-08.
//

import SwiftUI
import FirebaseAuth

struct ContentView: View {
    @State private var currentViewShowing: String = "login" //login or signup
    @AppStorage("uid") var userID: String = ""
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        if currentViewShowing == "login" {
            LoginView(currentShowingView: $currentViewShowing)
        } else if currentViewShowing == "ShopView" {
            ShopView(currentShowingView: $currentViewShowing)
        } else if currentViewShowing == "signup" {
            SignUpView(currentShowingView: $currentViewShowing)
        } else if userID == ""{
            AuthView()
        } else if currentViewShowing == "ContactView" {
            ContactView(currentShowingView: $currentViewShowing)
        } else if currentViewShowing == "HomeView"{
            HomeView(currentShowingView: $currentViewShowing)
        } else if currentViewShowing == "NewView" {
            NewView(currentShowingView: $currentViewShowing)
        } else if currentViewShowing == "CartView" {
            CartView(currentShowingView: $currentViewShowing)
                .environmentObject(cartManager)
        } else if currentViewShowing == "AccountView" {
            AccountView(currentShowingView: $currentViewShowing)
        } else if currentViewShowing == "AboutView" {
            AboutView(currentShowingView: $currentViewShowing)
        } else if currentViewShowing == "DropDownMenu" {
            DropDownView(currentShowingView: $currentViewShowing)
        } else if currentViewShowing == "PrivacyView" {
            PrivacyView(currentShowingView: $currentViewShowing)
        } else if currentViewShowing == "TermsView" {
            TermsView(currentShowingView: $currentViewShowing)
        } else if currentViewShowing == "Returns&Exchanges" {
            ReturnsExchangesView(currentShowingView: $currentViewShowing)
        } else if currentViewShowing == "MyArchiveView" {
            MyArchiveView(currentShowingView: $currentViewShowing)
        } else if currentViewShowing == "ImageView" {
            ImageView(currentShowingView: $currentViewShowing)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(CartManager())
    }
}
