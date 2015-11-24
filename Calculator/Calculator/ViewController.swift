//
//  ViewController.swift
//  Calculator
//
//  Created by 胡振生 on 15/11/24.
//  Copyright © 2015年 胡振生. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var display: UILabel!
    var isEnterNum:Bool = false
    
    @IBAction func touchDigit(sender: UIButton) {
        let digit = sender.currentTitle!
        if isEnterNum && display.text! != "0" {
            display.text = display.text! + digit
        } else {
            display.text = digit
            isEnterNum = true
        }
    }
    
}

