//
//  test.swift
//  brthday testing
//
//  Created by Jaden Smith on 2023-05-12.
//

import Foundation
import SwiftUI
import UIKit

label: do {
    Spacer()
    Button(action: {
        withAnimation {
        }
    }) {
        Image("smallBrthdayLogo")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 50)
    }
    Spacer()
        .padding()
    
    Text("EXPLORE")
        .foregroundColor(.black)
        .font(.title2)
        .bold()
        .padding()
    Spacer()
}
