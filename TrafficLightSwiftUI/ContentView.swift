//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Vahtee Boo on 26.10.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var startButton = true
    @State private var redColorOpacity = 0.3
    @State private var yellowColorOpacity = 0.3
    @State private var greenColorOpacity = 0.3
    @State private var currentColor = Light.red
    
    private func changeColor() {
        
        let lightIsOn = 1.0
        let lightIsOff = 0.3
        
        switch currentColor {      
        case .red:
            redColorOpacity = lightIsOn
            greenColorOpacity = lightIsOff
            currentColor = .yellow
        case .yellow:
            redColorOpacity = lightIsOff
            yellowColorOpacity = lightIsOn
            currentColor = .green
        case .green:
            yellowColorOpacity = lightIsOff
            greenColorOpacity = lightIsOn
            currentColor = .red
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension ContentView {
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                VStack {
                    ColorLight(color: .red, alpha: redColorOpacity)
                    Spacer()
                    ColorLight(color: .yellow, alpha: yellowColorOpacity)
                    Spacer()
                    ColorLight(color: .green, alpha: greenColorOpacity)
                }
                .frame(width: UIScreen.screenWidth, height: UIScreen.screenHeight)
                .offset(y: UIScreen.screenOffset)
                
                Spacer()
                Button(action: {
                    self.startButton = false;
                    changeColor()
                }, label: {
                    self.startButton ? Text("START") : Text("NEXT")
                })
                .buttonStyle()
            }
        }
    }   
}
