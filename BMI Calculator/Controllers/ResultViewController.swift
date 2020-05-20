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
    
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var advice: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        result.text = bmi
    }
    
    @IBAction func recalculate(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
