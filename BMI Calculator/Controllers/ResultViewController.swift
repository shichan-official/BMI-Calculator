//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Siavash Jalali on 2020/05/21.
//  Copyright © 2020 Siavash Jalali. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var bmi: String?
    var backgroundColor: UIColor?
    var message: String?
    
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var advice: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = backgroundColor ?? #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
        advice.text = message ?? "Error!"
        result.text = bmi
    }
    
    @IBAction func recalculate(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
