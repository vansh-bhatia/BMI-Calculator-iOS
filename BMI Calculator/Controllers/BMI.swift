//
//  BMI.swift
//  BMI Calculator
//
//  Created by Vansh Bhatia on 1/14/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct BMI{
    let value:Double
    let advice:String
    let color : UIColor
    
    func getAdvice()->String{
        return advice
    }
    func getColor()->UIColor{
        return color
    }
    
    func getBMIValue() -> Double {
        return value 
    }
}
