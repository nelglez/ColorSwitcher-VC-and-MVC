//
//  ColorsController.swift
//  ColorSwitcher
//
//  Created by Nelson Gonzalez on 1/8/19.
//  Copyright © 2019 Nelson Gonzalez. All rights reserved.
//

import Foundation

class ColorsController {
    
    var currentColorIndex: Int = 0
    var colors: [Color] = [Color(name: "Red", color: .red),
                           Color(name: "Orange", color: .orange),
                           Color(name: "Yellow", color: .yellow),
                           Color(name: "Green", color: .green),
                           Color(name: "Blue", color: .blue),
                           Color(name: "Purple", color: .purple)]
    
    var currentColor: Color {
        return colors[currentColorIndex]
    }
    
    var colorOn: Bool = false
}
