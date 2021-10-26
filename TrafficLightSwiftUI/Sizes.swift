//
//  Sizes.swift
//  TrafficLightSwiftUI
//
//  Created by Vahtee Boo on 26.10.2021.
//

import SwiftUI

enum Light {
    case red, yellow, green
}

extension UIScreen{
    static let screenWidth = UIScreen.main.bounds.size.width  / 2.5
    static let screenHeight = UIScreen.main.bounds.size.height / 1.6
    static let buttonSize = UIScreen.main.bounds.size.height / 13
    static let offsetSize = UIScreen.main.bounds.size.height / 20
}
