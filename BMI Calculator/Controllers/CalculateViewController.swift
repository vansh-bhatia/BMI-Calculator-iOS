//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    var calculatorBrain = CalculatorBrain()

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        //print(height)
        heightLabel.text = "\(height)m"
    }

    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weight = String(format: "%.f", sender.value)
        //print(weight)
        weightLabel.text = "\(weight)Kg"
    }

    @IBAction func calculatePressed(_ sender: UIButton) {
        //print("Height: \(heightSlider.value)\tWeight: \(weightSlider.value)")

        calculatorBrain.calculateBMI(height: Double(heightSlider.value), weight: Double(weightSlider.value))

        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
             destinationVC.calculatorBrain = calculatorBrain
        }
    }
}

