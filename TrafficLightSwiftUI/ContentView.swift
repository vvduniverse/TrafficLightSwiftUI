//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Vahtee Boo on 26.10.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TrafficLight()
            Spacer()
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("START")
            })
            .font(.title)
            .frame(width: 150, height: 60)
            .foregroundColor(.white)
            .background(Color.blue)
            .clipShape(Capsule())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
