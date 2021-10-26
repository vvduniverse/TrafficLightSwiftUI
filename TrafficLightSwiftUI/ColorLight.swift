//
//  ColorLight.swift
//  TrafficLightSwiftUI
//
//  Created by Vahtee Boo on 26.10.2021.
//

import SwiftUI

struct ColorLight: View {
    let color: Color
    let screenWidth = UIScreen.main.bounds.width
    var body: some View {
        Circle()
            .foregroundColor(color)
            .opacity(0.3)
            .frame(width: UIScreen.screenWidth, height: UIScreen.screenWidth)
    }
}

struct ColorLight_Previews: PreviewProvider {
    static var previews: some View {
        ColorLight(color: .blue)
    }
}
