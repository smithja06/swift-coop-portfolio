//
//  ItemDescriptionView.swift
//  Brthday demo
//
//  Created by Jaden Smith on 2023-05-22.
//

import SwiftUI

struct ItemDescriptionView: View {
    var body: some View {
        VStack {
            DetailScreen(product: popularList[1])
        }
    }
}

struct RoundedCorner: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}

struct ItemDescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        ItemDescriptionView()
    }
}

struct DescriptionView: View {
    var product: Product
    var body: some View {
        VStack (alignment: .leading) {
            Text(product.name)
                .font(.title)
                .fontWeight(.bold)
            
            HStack (spacing: 4){
                ForEach(0 ..< 5) { item in
                    Image(systemName: "star.fill")
                        .foregroundColor(Color(.yellow))
                }
                Text("(4.8)")
                    .opacity(0.5)
                    .padding(.leading, 8)
                Spacer()
            }
            
            Text("Description")
                .fontWeight(.medium)
                .padding(.vertical, 8)
            
            Text("HOLIDAY RED/GREEN PRINT\nINGREDIENTS:\n100% COTTON\n9.3 OZ HEAVYWEIGHT TEE\nDIRECT TO GARMENT PRINTED LOGO\nCHRISTMAS BALLOON BACKPRINT\nRELAXED OVERSIZE FIT\nDROP SHOULDER\nDOUBLE NEEDLE SLEEVES & BOTTOM HEM\nLIMITED")
                .lineSpacing(8.0)
                
            HStack {
                VStack (alignment: .leading) {
                    Text("Size ")
                        .fontWeight(.semibold)
                    Text("Small, Medium, Large, X-Large, XX-Large")
                }
                VStack (alignment: .leading) {
                    Text("Quantity")
                        .fontWeight(.semibold)
                    
                    HStack (alignment: .bottom) {
                        Button(action: {}) {
                            Image(systemName: "minus")
                                .padding(.all, 8)
                        }
                        .frame(width: 30, height: 30)
                        .overlay(RoundedRectangle(cornerRadius: 50).stroke())
                        .foregroundColor(.black)
                        
                        Text("1")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .padding(.horizontal, 8)
                        
                        Button(action: {}) {
                            Image(systemName: "plus")
                                .padding(.all, 8)
                            }
                        //.frame(width: 30, height: 30)
                        .background(Color(.orange))
                        .clipShape(Circle())
                        .foregroundColor(.black)
                    }
                }
                Spacer()
            }
            .padding(.vertical)
        }
        .padding()
        .padding(.top)
        .background(Color(.gray))
        .cornerRadius(40.0)
    }
}

struct DetailScreen: View {
    @EnvironmentObject var cartManager: CartManager
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var product: Product
    var body: some View {
        ZStack {
            Color("Bg")
                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                Image(product.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                DescriptionView(product: popularList[0])
                    .offset(y: -40)
                
            }
            .edgesIgnoringSafeArea(.top)
            
            HStack {
                Text("$\(product.price)")
                    .font(.title)
                    .foregroundColor(.white)
                
                Spacer()
                
                Button(action: {}, label: {
                    Text("Try it On!")
                        .padding()
                        //.padding(.horizontal)
                        .background(Color.white)
                        .cornerRadius(10.0)
                        .foregroundColor(Color(.orange))
                        .frame(height: 10.0)
                })

                Button(action: {cartManager.addToCart(product: product)}, label: {
                    Text("Add to Cart")
                        .padding()
                        //.padding(.horizontal)
                        .background(Color.white)
                        .cornerRadius(10.0)
                        .foregroundColor(Color(.orange))
                        .frame(height: 10.0)
                })
            }
            .padding()
            .padding(.horizontal)
            .background(Color(.orange))
            .cornerRadius(50.0, corners: .topLeft)
            .frame(maxHeight: .infinity, alignment: .bottom)
        }
        .edgesIgnoringSafeArea(.bottom)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: CustomBackButtonView(action: {presentationMode.wrappedValue.dismiss()}), trailing: Image(systemName: "ellipsis")
        )
    }
}

struct CustomBackButtonView: View {
    let action: ()-> Void
    var body: some View {
        Button(action: action, label: {
            Image(systemName: "chevron.backward")
                .padding(.all, 12)
                .background(Color.white)
                .cornerRadius(8.0)
                .foregroundColor(.black)
        })
    }
}
