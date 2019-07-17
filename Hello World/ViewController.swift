//
//  ViewController.swift
//  Hello World
//
//  Created by Girls Who Code on 7/8/19.
//  Copyright © 2019 Girls Who Code. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
let backgroundImageView = UIImageView()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        setBackground()
        
    }
   
    func setBackground() {
        // This adds the backgroundImageView to the subview
        view.addSubview(backgroundImageView)
        // This turns off autoresizing
        backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
        
        // This pins the background image to the top of the screen. We will do this for all four edges
        backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        // Leading is the left side, trailing is the right side.
        backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        // Set the image of the background view
        // Update the name in quotation marks to match the name of your background image
        backgroundImageView.image = UIImage(named: "Mountain-Background")
        
        // Set the background image to be behind all the elements
        view.sendSubviewToBack(backgroundImageView)
    }

}
