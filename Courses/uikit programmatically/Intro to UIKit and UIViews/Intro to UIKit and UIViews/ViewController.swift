//
//  ViewController.swift
//  Intro to UIKit and UIViews
//
//  Created by Mohamed Salah on 05/11/2024.
//

import UIKit

class ViewController: UIViewController {
  override func viewDidLoad() {
    /// Main View
    view.backgroundColor = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1) // main view background

    /// First View
    let myview = UIView(frame: CGRect(x: 50, y: 50, width: 100, height: 100))
    myview.backgroundColor = #colorLiteral(red: 0.9442318082, green: 1, blue: 0.05905979127, alpha: 1)
    myview.clipsToBounds = true // told view to clip subview if it bigger than main view
    myview.alpha = 0.5 // it will effect in all subview
    myview.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 4)

    print(myview.frame)
    print(myview.bounds)
    print(myview.center)

    /// SecondView
    let mysubview = UIView(frame: CGRect(x: 20, y: 20, width: 200, height: 200))
    mysubview.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)
    myview.isHidden = false // hidden view but still in view tree

    /// Create Lable View
    let mylable = UILabel(frame: CGRect(x: view.center.x , y: view.center.y  , width: 200, height: 20))
    mylable.text = "Hello World"
    mylable.textColor = .white
    mylable.textAlignment = .center


    /// Create Image View
    let myImageView = UIImageView(frame: CGRect(x: 200 , y: 200  , width: 200, height: 200))
//    myImageView.image = UIImage(named: "logo") // load image from assets
    myImageView.image = UIImage(systemName: "pencil") // use icon set in framwork
    myImageView.contentMode = UIView.ContentMode.scaleAspectFit

    /// Create Button View
    let myButton = UIButton(frame: CGRect(x: 200 , y: 400  , width: 200, height: 20) ,
                            primaryAction: UIAction(
                              title: "Click"
                            ){_ in 
                              print("I am clicked")
                            }
    )




    /// Here Link view with subViews
    view.addSubview(myview) // link view with main view to can show on screen
    myview.addSubview(mysubview)
    view.addSubview(mylable)
    view.addSubview(myImageView)
    view.addSubview(myButton)
  }
}
