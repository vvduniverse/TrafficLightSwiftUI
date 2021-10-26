//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Vahtee Boo on 26.10.2021.
//

import SwiftUI



struct ContentView: View {
    
    @State private var startButton = true
    
    var body: some View {
        VStack {
            TrafficLight()
                .offset(y: UIScreen.offsetSize)
            Spacer()
            Button(action: { self.startButton = false }, label: {
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
