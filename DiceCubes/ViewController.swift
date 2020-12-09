//
//  ViewController.swift
//  DiceCubes
//
//  Created by Настя on 19.02.2020.
//  Copyright © 2020 Anastasia Vikulova. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var ImageStackView: UIStackView!
    
    @IBOutlet weak var leftImage: UIImageView!
    
    @IBOutlet weak var rightImage: UIImageView!
    
    @IBOutlet weak var hintLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    override func touchesBegan (_ touches: Set<UITouch>, with event: UIEvent?) {
            self.diceRolling()
    }
    
    override func motionBegan(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
            self.diceRolling()
        }
    
    func diceRolling() {
          
        var milliseconds:Float = 8
            
        if #available(iOS 10.0, *) {
            Timer.scheduledTimer(withTimeInterval: 0.15, repeats: true) {
                timer in
                
                let leftNumber = Int.random(in: 1...6)
                let rightNumber = Int.random(in: 1...6)
                                 
                self.leftImage.image = UIImage(named: "Dice\(leftNumber)")
                self.rightImage.image = UIImage(named: "Dice\(rightNumber)")
                milliseconds = milliseconds - 1
                    
                if milliseconds <= 0 {
                
                    self.hintLabel.text = "\(leftNumber + rightNumber)"
                    timer.invalidate()
                    }
                
                }
                // Fallback on earlier versions
            
            } else {
                
                let leftNumber = Int.random(in: 1...6)
                let rightNumber = Int.random(in: 1...6)
                              
                self.leftImage.image = UIImage(named: "Dice\(leftNumber)")
                self.rightImage.image = UIImage(named: "Dice\(rightNumber)")
    
                self.hintLabel.text = "\(leftNumber + rightNumber)"
                    
                }
         }
}
