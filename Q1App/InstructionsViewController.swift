//
//  InstructionsViewController.swift
//  Q1App
//
//  Created by Jayden Wysong on 10/23/23.
//

import UIKit

class InstructionsViewController: UIViewController {
    
    @IBOutlet weak var Text: UILabel!
    var text = ""{
        didSet{
            Text.text = text
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true
    setTyping(text: "Welcome to My Q1 App, My app contains more than one app inside of one it is built like a fidget spinner. \n This app was a good idea for me because I have severe ADHD and I think it's helpful to fidget around with it. HOPE YOU ENJOY    \n 1. Random Gif Generator 2. Slider Game 3. Hidden Button Maze 4. Deku Vs Todoroki 1v1")
    }
    override func viewDidAppear(_ animated: Bool) {
        musicPlaySound(whatSound: "theme")
        musicPlayer.numberOfLoops = -1
    }
    func setTyping(text:String, caharacterDelay: TimeInterval = 5.0){
        self.text = ""
        let writingTask = DispatchWorkItem {[weak self]in text.forEach{char in DispatchQueue.main.async{ self?.text.append(char)
        }
            Thread.sleep(forTimeInterval: caharacterDelay / 100)
        }
            
        }
        let queue: DispatchQueue = .init(label:"typeSpeed", qos: .userInteractive)
        queue.asyncAfter(deadline: .now() + 0.4, execute: writingTask)
        
        
    }
}
