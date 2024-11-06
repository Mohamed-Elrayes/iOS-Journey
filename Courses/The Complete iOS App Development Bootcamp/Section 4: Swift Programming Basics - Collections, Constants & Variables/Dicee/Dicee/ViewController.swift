//
//  ViewController.swift
//  Dicee
//
//  Created by Mohamed Salah on 02/11/2024.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet var firstImage: UIImageView!

  @IBOutlet var secondImage: UIImageView!

  @IBAction func rollBtn(_ sender: Any) {
    let diceArray = ["DiceOne",
                     "DiceTwo",
                     "DiceThree",
                     "DiceFour",
                     "DieFive",
                     "DiceSix"]

    firstImage.image = UIImage(named: diceArray[Int.random(in: 0..<diceArray.count)])

    secondImage.image = UIImage(named: diceArray[Int.random(in: 0..<diceArray.count)])
    
  }
}
