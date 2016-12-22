//
//  ViewController.swift
//  YSRangeSliderExample
//
//  Created by Laurentiu Ungur on 04/02/16.
//  Copyright © 2016 Yardi. All rights reserved.
//

import UIKit
import YSRangeSlider

class ViewController: UIViewController {
    @IBOutlet weak var rangeSlider: YSRangeSlider!
    @IBOutlet weak var stepsSwitch: UISwitch!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stepsSwitch.addTarget(self, action: #selector(switchChanged), for: .valueChanged)
        
        rangeSlider.onChanged = {(rangeSlider: YSRangeSlider, minimumSelectedValue: Double, maximumSelectedValue: Double?) in
            self.label.text = "From \(minimumSelectedValue) to \(maximumSelectedValue)"
        }
    }
    
    func switchChanged(_ sender: UISwitch) {
        rangeSlider.step = sender.isOn ? 0.1 : 0.0
    }
}
