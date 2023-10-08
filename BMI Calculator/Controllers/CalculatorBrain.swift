//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Sanjay Singh on 03/07/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    mutating func calculateBmi(height: Float, weight: Float) {
        self.bmi = BMI(value: weight/pow(height, 2))
    }
    
    func getBmiValue() -> String {
        return String(format: "%.1f", self.bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return self.bmi?.advice ?? ""
    }
    
    func getBmiColor() -> UIColor {
        return self.bmi?.color ?? UIColor.blue
    }
}
