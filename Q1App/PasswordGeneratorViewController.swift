//
//  PasswordGeneratorViewController.swift
//  Q1App
//
//  Created by Jayden Wysong on 10/19/23.
//
import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var playerImageView: UIImageView!
    @IBOutlet weak var enemyImageView: UIImageView!
    @IBOutlet weak var playerHealthLabel: UILabel!
    @IBOutlet weak var enemyHealthLabel: UILabel!
    
    var playerHealth = 100
    var enemyHealth = 100
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateHealthLabels()
    }
    
    func updateHealthLabels() {
        playerHealthLabel.text = "Player Health: \(playerHealth)"
        enemyHealthLabel.text = "Enemy Health: \(enemyHealth)"
    }
    
    @IBAction func fightButtonTapped(_ sender: UIButton) {
        let playerDamage = Int.random(in: 10...20)
        let enemyDamage = Int.random(in: 5...15)
        
        enemyHealth -= playerDamage
        playerHealth -= enemyDamage
        
        if playerHealth <= 0 {
            playerHealth = 0
            showAlert(message: "Player has been defeated! Press Reset to play again.")
        }
        
        if enemyHealth <= 0 {
            enemyHealth = 0
            showAlert(message: "Enemy has been defeated! Press Reset to play again.")
        }
        
        updateHealthLabels()
    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        playerHealth = 100
        enemyHealth = 100
        updateHealthLabels()
    }
    
    func showAlert(message: String) {
        let alert = UIAlertController(title: "Game Over", message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
    }
}

