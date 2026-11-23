//
//  SwiftUIView.swift
//  brthday testing
//
//  Created by Jaden Smith on 2023-05-19.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        Button(action: {
            withAnimation {
            }
        }) { Group {
            Spacer()
            Spacer()
            
            Text("SHOP")
                .foregroundColor(.black)
                .font(.title3)
                .bold()
            
                .frame(maxWidth: .infinity)
                .padding()
            
                .background(
                    RoundedRectangle(cornerRadius: 20)
                        .strokeBorder()
                        .frame(width: 350, height: 60)
                )
                .padding(.horizontal)
        }
        }
    }
    
    struct SwiftUIView_Previews: PreviewProvider {
        static var previews: some View {
            SwiftUIView()
        }
    }
}
