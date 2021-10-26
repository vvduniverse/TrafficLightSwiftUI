//
//  Button.swift
//  TrafficLightSwiftUI
//
//  Created by Vahtee Boo on 26.10.2021.
//
import SwiftUI

struct CustomButton: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.title)
            .frame(width: UIScreen.screenWidth, height: UIScreen.buttonSize)
            .foregroundColor(.white)
            .background(Color.blue)
            .clipShape(RoundedRectangle(cornerRadius: 16))
            .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color.white, lineWidth: 2))
            .padding()
    }
}

extension View {
    func buttonStyle() -> some View {
        modifier(CustomButton())
    }
}
