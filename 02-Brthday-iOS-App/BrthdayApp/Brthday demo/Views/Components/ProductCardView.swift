//
//  ProductCardView.swift
//  Brthday demo
//
//  Created by Jaden Smith on 2023-06-02.
//

import SwiftUI

struct ProductCardView: View {
    @EnvironmentObject var cartManager: CartManager
    var product: Product
    
    var body: some View {
        VStack {
            Image(product.image)
                .resizable()
                .frame(width: 210, height: 200)
                .cornerRadius(20.0)
            
            Text("\(product.name)")
                .font(.title3)
                .fontWeight(.bold)
            
            HStack {
                Text("$\(product.price)")
                    .font(.title3)
                    .fontWeight(.bold)
            }
        }
        .frame(width:210)
        .padding()
        .background(Color.gray)
        .cornerRadius(20.0)
    }
}

struct ProductCardView_Previews: PreviewProvider {
    static var previews: some View {
        ProductCardView(product: popularList[0])
            .environmentObject(CartManager())
    }
}
