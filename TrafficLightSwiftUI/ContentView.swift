//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Vahtee Boo on 26.10.2021.
//

import SwiftUI

//enum Light {
//    case red, yellow, green
//}

struct ContentView: View {
    
    @State private var startButton = true
//    private var currentColor = Light.red
//    private var lightIsOn = 1.0
//    private var lightIsOff = 0.3
    
    var body: some View {
        VStack {
//            TrafficLight(lightColor: .red, opacity: lightIsOn)
            TrafficLight()
                .offset(y: UIScreen.offsetSize)
            Spacer()
            Button(action: {
                self.startButton = false;
                
                
            }, label: {
                self.startButton ? Text("START") : Text("NEXT")
            })
            .buttonStyle()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.black)
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
