//
//  SettingsViewController.swift
//  Prework
//
//  Created by Ali Alameedi on 8/11/21.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func sliderDidSlide( sender: UISlider) {
        
        let value = sender.value
        label.text = String(format: "%.0f", value)
        
    }
}
