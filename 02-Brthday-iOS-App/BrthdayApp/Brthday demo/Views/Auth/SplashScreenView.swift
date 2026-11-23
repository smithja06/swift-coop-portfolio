//
//  SplashScreenView.swift
//  Brthday demo
//
//  Created by Jaden Smith on 2023-06-11.
//

import SwiftUI

struct SplashScreenView: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    var body: some View {
        if isActive == true {
            ContentView()
        } else {
            VStack {
                VStack {
                    Image("smallBrthdayLogo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200, height: 200)
                        .font(.system(size: 80))
                    Text("Brthday Clothing")
                        .font(Font.custom("Baskerville-Bold", size: 26))
                        .foregroundColor(.black.opacity(0.80))
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeIn(duration: 1.2)) {
                        self.size = 0.9
                        self.opacity = 1.0
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
            .environmentObject(CartManager())
    }
}
