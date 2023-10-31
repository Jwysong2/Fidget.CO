//
//  gotYaViewController.swift
//  Q1App
//
//  Created by Jayden Wysong on 10/13/23.
//

import UIKit

class gotYaViewController: UIViewController {

    var color = UIColor()
    
    var redValue = 0.0
    var greenValue = 0.0
    var blueValue = 0.0
    var selectedColorView = 0
    
    @IBOutlet weak var colorView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true
       
    }
    
    @IBAction func colorSwitch(_ sender: UISlider) {
        greenValue = Double(sender.value)
        updateColor()
    }
    

    func updateColor() {
        color = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: 1)
        if selectedColorView == 0 {
            colorView.backgroundColor = color
       
        }
    }

}
