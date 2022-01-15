//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Vansh Bhatia on 1/14/22.
//

import Foundation
import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?

    mutating func calculateBMI(height: Double, weight: Double) {
        let advice = setAdvice(BMi: weight / pow(height, 2))
        let color = setColor(BMi: weight / pow(height, 2))
        bmi = BMI(value: weight / pow(height, 2), advice: advice, color: color)
    }
    
    func setAdvice(BMi: Double) -> String {
        if(BMi < 18.5) {
            return "You are Underweight, eat more food"
        }
        else if BMi < 24.9 {
            return "You are Normal"
        }
        else {
            return "You are Overweight, eat less food"
        }
    }
     
    func setColor(BMi: Double) -> UIColor {
        if(BMi < 18.5) {
            return #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
        }
        else if BMi < 24.9 {
            return #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)
        }
        else {
            return #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        }
    }
}
