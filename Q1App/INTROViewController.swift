//
//  introViewController.swift
//  Q1App
//
//  Created by Jayden Wysong on 10/23/23.
//
import UIKit

class IntroViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
//        createParticles()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 7.0) {
        self.performSegue(withIdentifier: "goINTRO", sender: nil)
              }
        
        
    }
    override func viewDidAppear(_ animated: Bool) {
        createParticles()
        print("HELlo")
    }
    
    func createParticles(){
        let particleEmitter = CAEmitterLayer()
        particleEmitter.emitterPosition = CGPoint(x: view.center.x, y: -96)
        particleEmitter.emitterShape = .line
        particleEmitter.emitterSize = CGSize(width: view.frame.size.width, height: 1)
        let white = makeEmitterCell(color: UIColor.white)
//        let green = makeEmitterCell(color: UIColor.green)
//        let blue = makeEmitterCell(color: UIColor.blue)
//        particleEmitter.emitterCells = [red, green, blue]
        particleEmitter.emitterCells = [white]
        view.layer.addSublayer(particleEmitter)
    }
    
    func makeEmitterCell(color: UIColor) -> CAEmitterCell{
        let cell = CAEmitterCell()
        cell.birthRate = 15 // Increase the birth rate for more particles
        cell.lifetime = 4 // Decrease the particle lifetime
        cell.lifetimeRange = 0.3 // Add some variation to lifetime
        cell.color = color.cgColor
        cell.velocity = 300 // Increase initial velocity
        cell.velocityRange = 75 // Add some variation to velocity
        cell.emissionLongitude = CGFloat.pi
        cell.emissionRange = CGFloat.pi / 8 // Reduce emission angle variation
        cell.spin = 1 // Decrease spin speed
        cell.spinRange = 1 // Add some variation to spin
        cell.scale = 0.005 // Increase the initial scale
        cell.scaleRange = 0.5 // Reduce the scale variation
        cell.scaleSpeed = -0.03 // Decrease the scale change over time
        cell.contents = UIImage(named: "FSFS2")?.cgImage
        
        return cell
    }

}

