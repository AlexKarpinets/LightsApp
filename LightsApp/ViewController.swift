//
//  ViewController.swift
//  LightsApp
//
//  Created by Karpinets Alexander on 06.07.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstSquare: UIView!
    @IBOutlet weak var secondSquare: UIView!
    @IBOutlet weak var threeSquare: UIView!
    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstSquare.layer.cornerRadius = 50
        secondSquare.layer.cornerRadius = 50
        threeSquare.layer.cornerRadius = 50
        startButton.layer.cornerRadius = 30
    }
    
    @IBAction func startButtonPressed() {
        startButton.setTitle("Next", for: .normal)
        
        if firstSquare.alpha == secondSquare.alpha {
            firstSquare.alpha = 1
            threeSquare.alpha = 0.3
        } else if firstSquare.alpha > 0.3 &&
                    secondSquare.alpha == threeSquare.alpha {
            secondSquare.alpha = 1
            firstSquare.alpha = 0.3
        } else if secondSquare.alpha > 0.3 &&
                    threeSquare.alpha == firstSquare.alpha {
            threeSquare.alpha = 1
            secondSquare.alpha = 0.3
        }
    }
}
