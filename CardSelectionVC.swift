//
//  CardSelectionVC.swift
//  CardWorkout
//
//  Created by Isha Chiddarwar on 15/08/23.
//

import UIKit

class CardSelectionVC: UIViewController {

    @IBOutlet weak var CardImgView: UIImageView!
   @IBOutlet var buttons: [UIButton]!
    
    var cards: [UIImage] = Card.allValues
    
    var timer:Timer!
    override func viewDidLoad() {
        super.viewDidLoad()
        startTimer()
        
        for button in buttons {
        button.layer.cornerRadius = 8
        }
        
    }
    func startTimer() {
      
        timer = Timer.scheduledTimer (timeInterval: 0.1, target: self, selector: #selector(showRandomImage),userInfo: nil, repeats:true)
    }
    
    @objc func showRandomImage () {
       CardImgView.image = cards.randomElement() ?? UIImage (named: "7S")
    }
                                    
    
    @IBAction func StopButton(_ sender: UIButton) {
        timer.invalidate()
    }
    
    
    @IBAction func RestartButton(_ sender: UIButton) {
        //timer.invalidate()
        startTimer()
    }
    
    
}
