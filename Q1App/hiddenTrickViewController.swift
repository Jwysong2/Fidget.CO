//
//  hiddenTrickViewController.swift
//  Q1App
//
//  Created by Jayden Wysong on 10/13/23.
//

import UIKit

class hiddenTrickViewController: UIViewController {
    @IBOutlet weak var fool: UIImageView!
   
    @IBOutlet weak var text2: UILabel!
    var text = ""{
        didSet{
            text2.text = text
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTyping(text:"I'm not the beginning, and I'm not the end,But you'll find me in the middle")
        fool.image = UIImage.gifImageWithName("DVT")
        self.navigationItem.hidesBackButton = true
    }

    func setTyping(text:String, caharacterDelay: TimeInterval = 5.3){
    self.text = ""
            let writingTask = DispatchWorkItem {[weak self]in text.forEach{char in DispatchQueue.main.async{ self?.text.append(char)
            }
                Thread.sleep(forTimeInterval: caharacterDelay / 100)
            }
                          
            }
        let queue: DispatchQueue = .init(label:"typeSpeed", qos: .userInteractive)
    queue.asyncAfter(deadline: .now() + 6.2, execute: writingTask)
            }

            
                  

}
