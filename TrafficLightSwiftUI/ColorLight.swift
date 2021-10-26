//
//  ColorLight.swift
//  TrafficLightSwiftUI
//
//  Created by Vahtee Boo on 26.10.2021.
//

import SwiftUI

struct ColorLight: View {
    let color: Color
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 150, height: 150)
        
    }
}

struct ColorLight_Previews: PreviewProvider {
    static var previews: some View {
        ColorLight(color: .blue)
    }
}
