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
    
    @IBOutlet weak var totalLabel: UILabel!
    
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
    
            
                
                let leftNumber = Int.random(in: 1...6)
                let rightNumber = Int.random(in: 1...6)
                              
                self.leftImage.image = UIImage(named: "Dice\(leftNumber)")
                self.rightImage.image = UIImage(named: "Dice\(rightNumber)")
    
                self.totalLabel.text = "Total: \(leftNumber + rightNumber)"
                    
                }
         }

/*
 func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer,
         shouldBeRequiredToFailBy otherGestureRecognizer: UIGestureRecognizer) -> Bool {
   // Do not begin the pan until the swipe fails.
   if gestureRecognizer == self.swipeGesture &&
          otherGestureRecognizer == self.panGesture {
      return true
   }
   return false
} */
