//
//  ViewController.swift
//  Magic-8-Ball
//
//  Created by Mohamed Salah on 02/11/2024.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet var imageView: UIImageView!

  @IBAction func askBtn(_ sender: Any) {
    var ballsArray: [String] = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    imageView.image = UIImage(named: ballsArray.randomElement()!)
  }
}
