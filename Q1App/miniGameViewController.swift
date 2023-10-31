//
//  miniGameViewController.swift
//  Q1App
//
//  Created by Jayden Wysong on 10/19/23.
//

import UIKit

class miniGameViewController: UIViewController {
    @IBOutlet weak var playerImageView: UIImageView!
    
    @IBOutlet weak var enemyImageView: UIImageView!
    
    @IBOutlet weak var playerHealthLabel: UILabel!
    
    @IBOutlet weak var enemyHealthLabel: UILabel!
    
    
    var playerHealth = 200
    var enemyHealth = 200
    
    override func viewDidLoad() {
        playerImageView.image = UIImage.gifImageWithName("DEKU")
        enemyImageView.image = UIImage.gifImageWithName("TODOROKI")
        super.viewDidLoad()
        updateHealthLabels()
    }
    
    func updateHealthLabels() {
        playerHealthLabel.text = "DEKU: \(playerHealth)"
        enemyHealthLabel.text = "TODOROKI: \(enemyHealth)"
    }
    
    @IBAction func fightButtonTapped(_ sender: UIButton) {
        let playerDamage = Int.random(in: 7...20)
        let enemyDamage = Int.random(in: 8...19)
        
        enemyHealth -= playerDamage
        playerHealth -= enemyDamage
        
        if playerHealth <= 0 {
            playerHealth = 0
            showAlert(message: "DEKU has been defeated! Press Reset to play again.")
        }
        
        if enemyHealth <= 0 {
            enemyHealth = 0
            showAlert(message: "Todoroki has been defeated! Press Reset to play again.")
        }
        
        updateHealthLabels()
    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
    
        playerHealth = 200
        enemyHealth = 200
        updateHealthLabels()
    }
    
    func showAlert(message: String) {
        let alert = UIAlertController(title: "Game Over", message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
    }
}

