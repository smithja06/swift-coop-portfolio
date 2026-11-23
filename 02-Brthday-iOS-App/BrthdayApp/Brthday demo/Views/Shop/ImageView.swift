//
//  ImageView.swift
//  Brthday demo
//
//  Created by Jaden Smith on 2023-06-09.
//

import SwiftUI

struct ImageView: View {
    @Binding var currentShowingView: String
    var body: some View {
        VStack {
            Color.white.edgesIgnoringSafeArea(.all)
            HStack {
                Button(action: {
                    withAnimation {
                        self.currentShowingView = "MyArchiveView"
                    }
                }) {
                    Image(systemName: "chevron.backward")
                        .padding(.all, 12)
                        .background(Color.gray)
                        .cornerRadius(8.0)
                        .foregroundColor(.black)
                        .padding(.leading)
                }
                Spacer()
            }
            Image("cameraPhoto")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 325, height: 650)
                .padding()
                .background(Color.gray)
                .cornerRadius(20)
            HStack {
                Button(action: {
                    withAnimation {
                    }
                }) {
                    Text("Share")
                        .foregroundColor(.white)
                        .font(.title3)
                        .frame(width: 150, height: 50)
                        .background(Color(.orange))
                        .cornerRadius(20)
                        .padding(.leading)
                }
                Spacer()
                Button(action: {
                    withAnimation {
                    }
                }) {
                    Text("Save to camera roll")
                        .foregroundColor(.white)
                        .font(.title3)
                        .frame(width: 200, height: 50)
                        .background(Color(.orange))
                        .cornerRadius(20)
                        .padding(.trailing)
                }
            }
        }
    }
}
