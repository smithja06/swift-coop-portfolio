//
//  AuthView.swift
//  Brthday demo
//
//  Created by Jaden Smith on 2023-05-09.
//

import SwiftUI

struct AuthView: View {
    @State private var currentViewShowing: String = "login" //login or signup
    
    var body: some View {
        
        if(currentViewShowing == "login") {
            LoginView(currentShowingView: $currentViewShowing)
                .preferredColorScheme(.light)
                .transition(.move(edge: .top))
        } else {
            SignUpView(currentShowingView: $currentViewShowing)
                .preferredColorScheme(.dark)
                .transition(.move(edge: .bottom))
        }
        
    }
}

struct AuthView_Previews: PreviewProvider {
    static var previews: some View {
        AuthView()
    }
}
