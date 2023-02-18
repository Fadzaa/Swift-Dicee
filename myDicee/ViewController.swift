//
//  ViewController.swift
//  myDicee
//
//  Created by Fattah Anggit on 19/02/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rollBtn: UIButton!
    @IBOutlet weak var imageDice1: UIImageView!
    @IBOutlet weak var imageDice2: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        rollBtn.layer.cornerRadius = 25
        rollBtn.layer.borderWidth = 2
        rollBtn.layer.borderColor = CGColor(red: 255, green: 255, blue: 255, alpha: 1)
        
    }

    @IBAction func rollBtnAction(_ sender: UIButton) {
        var dices = [
            UIImage(imageLiteralResourceName: "DiceOne"),
            UIImage(imageLiteralResourceName: "DiceTwo"),
            UIImage(imageLiteralResourceName: "DiceThree"),
            UIImage(imageLiteralResourceName: "DiceFour"),
            UIImage(imageLiteralResourceName: "DiceFive"),
            UIImage(imageLiteralResourceName: "DiceSix")
        ]
        
        imageDice1.image = dices.randomElement()
        imageDice2.image = dices[Int.random(in: 0...5)]
    }
    
}

