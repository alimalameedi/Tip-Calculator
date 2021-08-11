//
//  ViewController.swift
//  Prework
//
//  Created by Ali Alameedi on 8/10/21.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var label: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Tip Calculator"
        imageView.image = UIImage(named: "Tip_Art")
        imageView.contentMode = .scaleToFill
        // Do any additional setup after loading the view.
        
        
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        // Get bill amount from text field input
        
        let bill = Double(billAmountTextField.text!) ?? 0
        
        // Get Total tip by multiplying tip * tipPercentage
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill *
            tipPercentages[tipControl.selectedSegmentIndex]
        
        let total = bill + tip
        
        // Update Tip Amount label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        // Update Total amount
        totalLabel.text = String(format: "$%.2f", total)
        
        
    }
    
}

