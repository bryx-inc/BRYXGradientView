//
//  ViewController.swift
//  BRYXGradientView_Example
//
//  Created by Adam Binsz on 9/28/15.
//  Copyright © 2015 Adam Binsz. All rights reserved.
//

import UIKit
import BRYXGradientView

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Create GradientView with simple initializer
        let gradientView = GradientView(topColor: UIColor.cyan, bottomColor: UIColor.blue)
        gradientView.frame = view.bounds
        view.addSubview(gradientView)
        
        // Easily change top and bottom colors after intialization
        gradientView.topColor = UIColor.yellow
        gradientView.bottomColor = UIColor.orange
        
        // Use more than two colors
        gradientView.gradientLayer.colors = [UIColor.red.cgColor, UIColor.orange.cgColor, UIColor.yellow.cgColor]
    }
}
