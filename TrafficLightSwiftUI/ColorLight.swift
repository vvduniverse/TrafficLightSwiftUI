//
//  ColorLight.swift
//  TrafficLightSwiftUI
//
//  Created by Vahtee Boo on 26.10.2021.
//

import SwiftUI

struct ColorLight: View {
    
    let color: Color
    let alpha: Double
    let screenWidth = UIScreen.main.bounds.width
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .opacity(alpha)
            .frame(width: UIScreen.screenWidth, height: UIScreen.screenWidth)
            .overlay(Circle().stroke(Color.white, lineWidth: 3)
            )
    }
}

struct ColorLight_Previews: PreviewProvider {
    static var previews: some View {
        ColorLight(color: .blue, alpha: 0.3)
    }
}
