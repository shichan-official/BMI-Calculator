//
//  BmiCalculator.swift
//  BMI Calculator
//
//  Created by Siavash Jalali on 2020/05/21.
//  Copyright © 2020 Siavash Jalali. All rights reserved.
//

import Foundation
import UIKit

struct BmiCalculator {
    var height: Double = 0
    var weight: Double = 0
    
    init(_ h: Double, _ w: Double) {
        height = h
        weight = w
    }
    
    mutating func getBmi() -> BMI {
        let bmiValue = weight/pow(height, 2)
        let message: String
        let color: UIColor
        if bmiValue < 18.5 {
            message = "Underweight"
            color = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        } else if bmiValue < 24.9 {
            message = "Normal"
            color = #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)
        } else {
            message = "Overweight"
            color = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        }
        return BMI(value: bmiValue, message: message, color: color)
    }
}
