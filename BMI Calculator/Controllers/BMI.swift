//
//  BMI.swift
//  BMI Calculator
//
//  Created by Sanjay Singh on 03/07/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct BMI {
    let value: Float
    let advice: String
    let color: UIColor
    
    init(value: Float) {
        self.value = value
        if value < 18.5 {
            self.advice = "Need to eat more"
            self.color = UIColor.orange
        } else if value >= 18.5 && value <= 24.9 {
            self.advice = "You are on a good Diet"
            self.color = UIColor.blue
        } else {
            self.advice = "Relook at your diet and cut down on food"
            self.color = UIColor.red
        }
    }
}
