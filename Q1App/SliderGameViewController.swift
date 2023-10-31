//
//  SliderGameViewController.swift
//  colorSwitcher
//
//  Created by Jayden Wysong on 9/28/23.
//

import UIKit

class SliderGameViewController: UIViewController {
    
    @IBOutlet weak var scoreText: UILabel!
    
    @IBOutlet weak var textArea: UILabel!
    
    var redValue = 0.0
    var blueValue = 0.0
    var scoreChecked = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func redSlider(_ sender: UISlider) {
        redValue = Double(sender.value)
        updateText()
    }
    @IBAction func blueSlider(_ sender: UISlider) {
        blueValue = Double(sender.value)
        updateText()
    }
    
    
    
    
    func updateText(){
        scoreChecked += 1
        scoreText.text = "\(scoreChecked)"
        if redValue >  blueValue {
            textArea.text = "Red Wins!"
        } else if redValue < blueValue {
            textArea.text = "Blue Wins!"
        } else {
            textArea.text = "TIE"
        }
        
    }
}
