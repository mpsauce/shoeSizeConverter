//
//  ViewController.swift
//  ShoeSizeConverter
//
//  Created by Matthew Surowiec on 12/3/14.
//  Copyright (c) 2014 MPS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mensShoeSizeTextField: UITextField!
    
    @IBOutlet weak var mensConvertedShoeSizeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPressed(sender: UIButton) {
        
        let sizeFromTextField = mensShoeSizeTextField.text.toInt()!
        mensConvertedShoeSizeLabel.hidden = false
        let conversionConstant = 30
        mensConvertedShoeSizeLabel.text = "\(sizeFromTextField + conversionConstant)" + " In European Shoe Size"
    }

}