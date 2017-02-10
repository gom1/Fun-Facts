//
//  BackgroundColorProvider.swift
//  FunFacts
//
//  Created by German Om on 2/9/17.
//  Copyright © 2017 German Om. All rights reserved.
//

import UIKit
import GameKit

struct BackgroundColorProvider {
    let colors = [
        UIColor(red: 90/255.0, green: 187/255.0, blue: 181/255.0, alpha: 1),
        UIColor(red: 222/255.0, green: 171/255.0, blue: 66/255.0, alpha: 1),
        UIColor(red: 223/255.0, green: 86/255.0, blue: 94/255.0, alpha: 1),
        UIColor(red: 239/255.0, green: 130/255.0, blue: 100/255.0, alpha: 1),
        UIColor(red: 77/255.0, green: 75/255.0, blue: 82/255.0, alpha: 1),
        UIColor(red: 85/255.0, green: 94/255.0, blue: 133/255.0, alpha: 1)
    ]
    
    func randomColor(_ color: UIColor) -> UIColor {
        var foundNextColor = false
        var randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: colors.count)
        while foundNextColor == false {
            if color == colors[randomNumber] {
                randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: colors.count)
            } else {
                foundNextColor = true
            }
        }
        return colors[randomNumber]
    }
}
