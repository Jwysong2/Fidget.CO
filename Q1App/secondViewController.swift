//
//  secondViewController.swift
//  Q1App
//
//  Created by Jayden Wysong on 10/11/23.
//

import UIKit

class secondViewController: UIViewController {

    @IBOutlet weak var testText: UILabel!
    
    @IBOutlet weak var gifBox: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gifBox.image = UIImage(named: "\(randomPick)")
        gifBox.image = UIImage.gifImageWithName("\(randomPick)")

        // Do any additional setup after loading the view.
    }
  
    override func viewDidAppear(_ animated: Bool) {
        testText.text = randomPick
    }

}
