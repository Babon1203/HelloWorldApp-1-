//
//  ViewController.swift
//  HelloWorldApp
//
//  Created by Кирилл Саталкин on 24.09.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var buttonStart: UIButton!
    @IBOutlet weak var colorGreen: UIView!
    @IBOutlet weak var colorRed: UIView!
    @IBOutlet weak var colorYellow: UIView!
    var indexColorTrafficLight = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        colorRed.alpha  = 0.3
        colorYellow.alpha = 0.3
        colorGreen.alpha  = 0.3
        buttonStart.layer.cornerRadius = 25
        colorRed.layer.cornerRadius = 75
        colorYellow.layer.cornerRadius = 75
        colorGreen.layer.cornerRadius = 75
        buttonStart.setTitle("START", for: .normal)
        
        
    }
    
    @IBAction func buttonStartPressed() {
        
        buttonStart.setTitle("NEXT", for: .normal)
        
        if indexColorTrafficLight == 0 {
            colorRed.alpha = 1
            colorYellow.alpha = 0.3
            colorGreen.alpha = 0.3
            return indexColorTrafficLight += 1
        }
        if indexColorTrafficLight == 1 {
            colorRed.alpha = 0.3
            colorYellow.alpha = 1
            colorGreen.alpha = 0.3
            return indexColorTrafficLight += 1
        }
        if indexColorTrafficLight == 2 {
            colorRed.alpha = 0.3
            colorYellow.alpha = 0.3
            colorGreen.alpha = 1
            return indexColorTrafficLight = 0
        }
        
    }
    
}

