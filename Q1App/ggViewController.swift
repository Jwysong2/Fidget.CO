//
//  ggViewController.swift
//  Q1App
//
//  Created by Jayden Wysong on 10/13/23.
//

import UIKit

class ggViewController: UIViewController {

    @IBOutlet weak var troll: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        troll.image = UIImage.gifImageWithName("7")
        self.navigationItem.hidesBackButton = true
    }
    

   

}
