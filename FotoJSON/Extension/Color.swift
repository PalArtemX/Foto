//
//  Color.swift
//  FotoJSON
//
//  Created by Artem Palyutin on 05.09.2021.
//

import Foundation
import SwiftUI


struct ColorTheme {
    let text = Color("Text")
}


extension Color {
    static var colorTheme = ColorTheme()
}
