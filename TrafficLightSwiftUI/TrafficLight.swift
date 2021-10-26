//
//  TrafficLight.swift
//  TrafficLightSwiftUI
//
//  Created by Vahtee Boo on 26.10.2021.
//

import SwiftUI

struct TrafficLight: View {
    var body: some View {
        VStack {
            ColorLight(color: .red)
            Spacer()
            ColorLight(color: .yellow)
            Spacer()
            ColorLight(color: .green)
        }
        .padding()
        .background(Color.black)
        .frame(width: UIScreen.screenWidth, height: UIScreen.screenHeight)
    }
}

struct TrafficLight_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLight()
    }
}
