//
//  CartView.swift
//  Brthday demo
//
//  Created by Jaden Smith on 2023-05-31.
//

import SwiftUI

struct CartView: View {
    @Binding var currentShowingView: String
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        ScrollView {
            ZStack {
                Color.white.edgesIgnoringSafeArea(.all)
                
                VStack {
                    HStack (alignment: .center) {
                        Spacer()
                        Text("CART")
                            .foregroundColor(.black)
                            .font(.title2)
                            .bold()
                        
                        Spacer()
                    }
                    VStack {
                        RoundedRectangle(cornerRadius: 10)
                            .strokeBorder()
                            .frame(height: 1)
                    }
                }
            }
            if cartManager.products.count > 0 {
                ForEach(cartManager.products, id: \.id) { product in
                    ProductRow(product: product)
                }
                
                HStack {
                    Text("Your cart total is")
                    Spacer()
                    Text("$\(cartManager.total).00")
                        .bold()
                }
                .padding()
            } else {
                Text("Your cart is empty")
            }
            Spacer()
            
            ZStack {
                VStack (alignment: .trailing){
                    Spacer()
                    HStack (alignment: .bottom){
                        BottomNavBarItem(image: Image(systemName: "gift")) {withAnimation{self.currentShowingView = "NewView"}}
                            .foregroundColor(Color.black)
                        BottomNavBarItem(image: Image(systemName: "house")) {withAnimation{self.currentShowingView = "HomeView"}}
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
                    .position(x: 195, y: 650)
                }
            }
        }
    }
}

