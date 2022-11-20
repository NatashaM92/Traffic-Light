//
//  ViewController.swift
//  Traffic Light
//
//  Created by Наталья Миронова on 19.11.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    @IBOutlet var startButton: UIButton!
    
    override func viewWillLayoutSubviews() {
        redLightView.layer.cornerRadius = redLightView.bounds.width / 2
        yellowLightView.layer.cornerRadius = yellowLightView.bounds.width / 2
        greenLightView.layer.cornerRadius = greenLightView.bounds.width / 2
        startButton.layer.cornerRadius = 10
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func startButtonDidTapped() {
        startButton.setTitle("NEXT", for: .normal)
        
        if redLightView.alpha != 1 && yellowLightView.alpha != 1 {
            redLightView.alpha = 1
           greenLightView.alpha = 0.3
            
        } else if yellowLightView.alpha != 1 {
            redLightView.alpha = 0.3
            yellowLightView.alpha = 1
            
        } else if greenLightView.alpha != 1 {
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 1
        }
    }
}


    

