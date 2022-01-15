//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Vansh Bhatia on 1/14/22.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!


    var calculatorBrain: CalculatorBrain?
    override func viewDidLoad() {
        super.viewDidLoad()
        var bmiValue: Double
        var advice: String
        var color: UIColor
        
        
        bmiValue = calculatorBrain?.bmi?.getBMIValue() ?? 0.0
        advice = calculatorBrain?.bmi?.getAdvice() ?? "Error"
        color = calculatorBrain?.bmi?.getColor() ?? .black
        
        
        bmiLabel.text = "\(round(10 * bmiValue) / 10)"
        adviceLabel.text = advice
        view.backgroundColor = color
    }

    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)//goes back to the activity that called it
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
