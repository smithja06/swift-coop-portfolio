//
//  ShopView.swift
//  Brthday demo
//
//  Created by Jaden Smith on 2023-05-19.
//

import SwiftUI

struct ShopView: View {
    @Binding var currentShowingView: String
    @State private var selectedIndex: Int = 0
    @EnvironmentObject var cartManager: CartManager
    private let categories = ["All", "Hoodies", "T-Shirts", "Crewnecks", "Button-Up", "Quarter-Zip"]
    var body: some View {
        NavigationView {
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
                            .padding()
                        
                        Text("SHOP")
                            .foregroundColor(.black)
                            .font(.title2)
                            .bold()
                        
                        Spacer()
                            .padding()
                        
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
                    ScrollView (.vertical, showsIndicators: false) {
                        VStack (alignment: .leading) {
                            HStack (alignment: .center) {
                                Text("Popular")
                                    .font(.title3)
                                    .fontWeight(.bold)
                                    .fontDesign(.rounded)
                                    .padding(.horizontal)
                            }
                        }
                        ScrollView (.horizontal, showsIndicators: false) {
                            HStack {
                                ForEach(popularList, id: \.id) { product in
                                    NavigationLink(
                                        destination: DetailScreen(product: product).environmentObject(cartManager),
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
                        
                        
                        ScrollView (.horizontal, showsIndicators: false) {
                            HStack{
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
                        //All tab
                        if selectedIndex == 0 {
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
                                LazyVGrid (columns: columns, spacing: 20) {
                                    ForEach(productList, id: \.id) { product in
                                        ProductCard(product: product)
                                            .environmentObject(cartManager)
                                    }
                                }
                                .padding()
                            }
                        }
                        //Hoodies tab
                        if selectedIndex == 1 {
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
                                LazyVGrid (columns: columns, spacing: 20) {
                                    ForEach(productListHoodies, id: \.id) { product in
                                        ProductCard(product: product)
                                            .environmentObject(cartManager)
                                    }
                                }
                                .padding()
                            }
                        }
                        //T-Shirts tab
                        if selectedIndex == 2 {
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
                                LazyVGrid (columns: columns, spacing: 20) {
                                    ForEach(productListTShirts, id: \.id) { product in
                                        ProductCard(product: product)
                                            .environmentObject(cartManager)
                                    }
                                }
                                .padding()
                            }
                        }
                        //Crewnecks tab
                        if selectedIndex == 3 {
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
                                LazyVGrid (columns: columns, spacing: 20) {
                                    ForEach(productListCrewnecks, id: \.id) { product in
                                        ProductCard(product: product)
                                            .environmentObject(cartManager)
                                    }
                                }
                                .padding()
                            }
                        }
                        //Button ups tab
                        if selectedIndex == 4 {
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
                                LazyVGrid (columns: columns, spacing: 20) {
                                    ForEach(productListButtonUps, id: \.id) { product in
                                        ProductCard(product: product)
                                            .environmentObject(cartManager)
                                    }
                                }
                                .padding()
                            }
                        }
                        //Quarter zip tab
                        if selectedIndex == 5 {
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
                                LazyVGrid (columns: columns, spacing: 20) {
                                    ForEach(productListQuarterZips, id: \.id) { product in
                                        ProductCard(product: product)
                                            .environmentObject(cartManager)
                                    }
                                }
                                .padding()
                            }
                        }
                    }
                }
            }
        }
    }
}

struct CategoryView: View {
    let isActive: Bool
    let text: String
    var body: some View {
        VStack (alignment: .leading, spacing: 0) {
            Text(text)
                .font(.system(size: 15))
                .fontWeight(.medium)
                .foregroundColor(isActive ? Color(.orange): Color.black.opacity(0.5))
            
            if (isActive) {
                Color("Primary")
                    .frame(width: 15, height: 2)
                    .clipShape(Capsule())
                    .foregroundColor(.orange)
            }
        }
        .padding(.trailing)
    }
}

