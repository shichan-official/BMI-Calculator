//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Siavash Jalali on 2020/05/21.
//  Copyright © 2020 Siavash Jalali. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    var bmiCalculator = BmiCalculator(1.5, 100)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func heightChanged(_ sender: UISlider) {
        bmiCalculator.height = Double(sender.value)
        heightLabel.text = "\(String(format: "%.2f", sender.value))m"
    }
    
    @IBAction func weightChanged(_ sender: UISlider) {
        bmiCalculator.weight = Double(sender.value)
        weightLabel.text = "\(String(format: "%.0f", sender.value))Kg"
    }
    
    @IBAction func calculateBmi(_ sender: UIButton) {
        self.performSegue(withIdentifier: "showResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showResult" {
            let destination = segue.destination as! ResultViewController
            let bmiResult = bmiCalculator.getBmi()
            destination.bmi = String(format: "%.1f", bmiResult.value)
            destination.backgroundColor = bmiResult.color
            destination.message = bmiResult.message
        }
    }
}
