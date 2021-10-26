//
//  TrafficLight.swift
//  TrafficLightSwiftUI
//
//  Created by Vahtee Boo on 26.10.2021.
//

import SwiftUI

//enum Light2 {
//    case red, yellow, green
//}

struct TrafficLight: View {
    
    @State private var currentColor = Light.red
    @State private var lightIsOn = 1.0
    @State private var lightIsOff = 0.3
    
    
    //    let lightColor: Light
    //    let opacity: Double
    
    var body: some View {
        let redColor = ColorLight(color: .red, alpha: switchColor(curentColor: currentColor))
        let yellowColor = { ColorLight(color: .yellow, alpha: switchColor(curentColor: currentColor)) }
        let greenColor = { ColorLight(color: .green, alpha: switchColor(curentColor: currentColor)) }
        VStack {
            redColor
            //            ColorLight(color: .red, alpha: lightIsOff)
            Spacer()
            yellowColor()
            //            ColorLight(color: .yellow, alpha: lightIsOff)
            Spacer()
            greenColor()
            //            ColorLight(color: .green, alpha: lightIsOff)
        }
        .padding()
        .background(Color.black)
        .frame(width: UIScreen.screenWidth, height: UIScreen.screenHeight)
    }
}

struct TrafficLight_Previews: PreviewProvider {
    static var previews: some View {
        //        TrafficLight(lightColor: Light.red, opacity: 0.3)
        TrafficLight()
    }
}

extension TrafficLight {
    func switchColor(curentColor: Light) -> Double {
        switch curentColor {
        case .red: currentColor = Light.yellow; print(currentColor); return lightIsOn
        case .yellow: currentColor = Light.green; print(currentColor); return lightIsOn
        case .green: currentColor = Light.red; print(currentColor); return lightIsOn
        }
    }
}
