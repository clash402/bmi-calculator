//
//  Calculator.swift
//  bmi-calculator
//
//  Created by Josh Courtney on 4/27/21.
//

import Foundation

struct Calculator {
    
    func getBMI(height: Float, weight: Float) -> BMI {
        let bmiValue = weight / (height * height)
        let bmiString = String(format: "%.1f", bmiValue)
        
        if bmiValue < 18.5 {
            return BMI(value: bmiString, advice: "Underweight", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if bmiValue < 24.9 {
            return BMI(value: bmiString, advice: "Normal weight", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        } else {
            return BMI(value: bmiString, advice: "Overweight", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        }
    }
    
}
