//
//  ClothingReleasesView.swift
//  Brthday demo
//
//  Created by Jaden Smith on 2023-06-02.
//

import SwiftUI

struct ClothingReleasesView: View {
    @Binding var currentShowingView: String
    @State private var selectedIndex: Int = 0
    @StateObject var cartManager = CartManager()
    private let categories = ["All", "Hoodies", "T-Shirts", "Crewnecks", "Button-Up", "Quarter-Zip"]
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.white.edgesIgnoringSafeArea(.all)
                
                VStack {
                    HStack {
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
                        Spacer().padding()
                        
                        Text("SHOP")
                            .foregroundColor(.black)
                            .font(.title2)
                            .bold()
                        
                        Spacer().padding()
                        
                        Button(action: {
                            withAnimation {
                                self.currentShowingView = "DropDownMenu"
                            }
                        }) {
                            Image(systemName: "line.3.horizontal")
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
                
                VStack {
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(alignment: .leading) {
                            Text("Popular")
                                .font(.title3)
                                .fontWeight(.bold)
                                .fontDesign(.rounded)
                                .padding(.horizontal)
                        }
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                ForEach(popularList, id: \.id) { product in
                                    NavigationLink(
                                        destination: DetailScreen(product: product),
                                        label: {
                                            ProductCardView(product: product)
                                        })
                                    .navigationBarHidden(true)
                                    .foregroundColor(.black)
                                }
                                .padding(.trailing)
                            }
                            .padding(.leading)
                        }
                    }
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(0 ..< categories.count, id: \.self) { i in
                                CategoryView(isActive: i == selectedIndex, text: categories[i])
                                    .onTapGesture {
                                        selectedIndex = i
                                    }
                            }
                        }
                        .padding()
                    }
                    
                    let columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
                    
                    ScrollView {
                        NavigationLink(
                            destination: CartView(currentShowingView: $currentShowingView)
                                .environmentObject(cartManager),
                            label: {
                                Spacer()
                                CartButton(numberOfProducts: cartManager.products.count)
                                    .foregroundColor(.black)
                            })
                        .foregroundColor(.black)
                        .padding(.trailing)
                        
                        LazyVGrid(columns: columns, spacing: 20) {
                            switch selectedIndex {
                            case 0:
                                ForEach(productList, id: \.id) { product in
                                    ProductCard(product: product)
                                        .environmentObject(cartManager)
                                }
                            case 1:
                                ForEach(productListHoodies, id: \.id) { product in
                                    ProductCard(product: product)
                                        .environmentObject(cartManager)
                                }
                            case 2:
                                ForEach(productListTShirts, id: \.id) { product in
                                    ProductCard(product: product)
                                        .environmentObject(cartManager)
                                    
                                }
                            default:
                                Text("Unknown")
                            }
                        }
                    }
                }
            }
        }
    }
}

