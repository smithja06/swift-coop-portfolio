//
//  Brthday_demoApp.swift
//  Brthday demo
//
//  Created by Jaden Smith on 2023-05-08.
//

import SwiftUI
import FirebaseCore

@main
struct Brthday_demoApp: App {
    @StateObject var cartManager = CartManager()
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            SplashScreenView()
                .environmentObject(cartManager)
        }
    }
}
