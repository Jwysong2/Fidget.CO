//
//  settingsViewController.swift
//  Q1App
//
//  Created by Jayden Wysong on 10/16/23.
//

import UIKit

class SettingsViewController: UIViewController {
    @IBOutlet weak var colorPicker: UIPickerView! // Connect this to your color picker in the storyboard
    
    let colors: [UIColor] = [UIColor.white, UIColor.lightGray, UIColor.blue, UIColor.green, UIColor.yellow]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorPicker.delegate = self
        colorPicker.dataSource = self
    }
    
    // Apply the selected background color
    func applyBackgroundColor(_ color: UIColor) {
        if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
            for window in windowScene.windows {
                window.backgroundColor = color
            }
        }
    }

    @IBAction func applyColorButtonTapped(_ sender: UIButton) {
        let selectedRow = colorPicker.selectedRow(inComponent: 0)
        let selectedColor = colors[selectedRow]
        applyBackgroundColor(selectedColor)
    }
}

extension SettingsViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "Color \(row + 1)"
       
      
    }
}
