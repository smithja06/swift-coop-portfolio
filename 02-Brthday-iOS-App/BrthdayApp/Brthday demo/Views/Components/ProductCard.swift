//
//  ProductCard.swift
//  Brthday demo
//
//  Created by Jaden Smith on 2023-05-31.
//

import SwiftUI

struct ProductCard: View {
    @EnvironmentObject var cartManager: CartManager
    var product: Product
    
    var body: some View {
        ZStack (alignment: .topTrailing) {
            VStack (alignment: .center, spacing: 0) {
                Image(product.image)
                    .resizable()
                    .frame(width: 170, height: 170)
                    .cornerRadius(20.0)
                    .scaledToFit()
                
                Text(product.name)
                    .font(.title3)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                
                HStack {
                    Text("\(product.price)$")
                        .font(.title3)
                        .fontWeight(.bold)
                }
            }
            .frame(width: 155, height: 295)
            .padding()
            .background(Color.gray)
            .cornerRadius(20.0)
            .shadow(radius: 3)
            
            Button {
                cartManager.addToCart(product: product)
            } label: {
                Image(systemName: "plus")
                    .padding(10)
                    .foregroundColor(.white)
                    .background(.black)
                    .cornerRadius(50)
                    .padding()
            }
        }
    }
}

struct ProductCard_Previews: PreviewProvider {
    static var previews: some View {
        ProductCard(product: productList[0])
            .environmentObject(CartManager())
    }
}
