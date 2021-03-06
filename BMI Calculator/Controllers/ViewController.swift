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
    var height: Double = 1.5
    var weight: Double = 100
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func heightChanged(_ sender: UISlider) {
        height = Double(sender.value)
        heightLabel.text = "\(String(format: "%.2f", sender.value))m"
    }
    
    @IBAction func weightChanged(_ sender: UISlider) {
        weight = Double(sender.value)
        weightLabel.text = "\(String(format: "%.0f", sender.value))Kg"
    }
    
    @IBAction func calculateBmi(_ sender: UIButton) {
        print(weight/pow(height, 2))
        
        let next = ResultViewController()
        self.present(next, animated: true, completion: nil)
    }
}
