//
//  ViewController.swift
//  Q1App
//
//  Created by Jayden Wysong on 10/9/23.
import UIKit
var randomPick = ""

class ViewController: UIViewController {
var pictures = [ "1", "2", "3", "4", "5", "6", "7", "8", "9","10", "11", "12","13","14", "15","16", "17","18", "19", "20", "21","22", "23", "24","25", "26", "27","28", "29", "30","31","32","33"]
    
    @IBOutlet var gifRandoImages: [UIImageView]!
    
    @IBOutlet weak var gifA: UIImageView!
    @IBOutlet weak var gifB: UIImageView!
    @IBOutlet weak var gifC: UIImageView!
    @IBOutlet weak var gifD: UIImageView!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        gifA.image = UIImage.gifImageWithName("9")
        gifB.image = UIImage.gifImageWithName("30")
        gifC.image = UIImage.gifImageWithName("intro")
        gifD.image = UIImage.gifImageWithName("15")
        self.navigationItem.hidesBackButton = true
    }
    @IBAction func randoImage(_ sender: UIButton) {
        randomPick = pictures.randomElement() ?? "1"
    }
    

   
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
//    func loadAllAnimation(){
//        for i in pictures{
//            gifRandoImages[Int(i)!].image = UIImage.gifImageWithName("\(i)")
//        }

    
    



//
//let fruits = ["Banana", "Mango", "Apple", "Orange"]
//let randomFruit = fruits.randomElement()
