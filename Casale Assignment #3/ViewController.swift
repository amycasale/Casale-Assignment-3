//
//  ViewController.swift
//  Casale Assignment #3
//
//  Created by Amy Casale on 2/19/20.
//  Copyright © 2020 Amy Casale. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var pugView: UIImageView!
    @IBOutlet weak var speedSlider: UISlider!
    @IBOutlet weak var grassBackground: UIImageView!
    
    @IBAction func startstopAnimationButton(_ sender: Any) {
        if(pugView.isAnimating)
        {
            pugView.stopAnimating()
        } else
        {
            pugView.startAnimating()
        }
    }
    
  
    @IBAction func setSpeed(_ sender: Any) {
        
        pugView.animationDuration=TimeInterval(1.0-speedSlider.value)
    }
    
    @IBAction func toggleBackground(_ sender: Any) {
        if(grassBackground.isHidden)
        {
            grassBackground.isHidden = false
        } else
        {
            grassBackground.isHidden = true
        }
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let pugAnimation: [UIImage] = [
            UIImage(named: "image1")!,
            UIImage(named: "image2")!,
            UIImage(named: "image3")!,
            UIImage(named: "image4")!,
            UIImage(named: "image5")!,
            UIImage(named: "image6")!,
            UIImage(named: "image7")!,
            UIImage(named: "image8")!,
            UIImage(named: "image9")!,
            UIImage(named: "image10")!,
            UIImage(named: "image11")!,
            UIImage(named: "image12")!,
            UIImage(named: "image13")!,
        
        ]
        pugView.animationImages=pugAnimation
        pugView.animationDuration=1.0
    }


}

