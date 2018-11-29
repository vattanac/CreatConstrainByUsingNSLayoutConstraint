//
//  ViewController.swift
//  ConstraintDemo2
//
//  Created by Vattanac on 11/29/18.
//  Copyright © 2018 vattanac. All rights reserved.
//


//** Creat Constrain By Using NSLayoutConstraint **//
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
       button.translatesAutoresizingMaskIntoConstraints = false
       label.translatesAutoresizingMaskIntoConstraints = false
        let constraint = NSLayoutConstraint(
            item: button,
            attribute: .centerX,
            relatedBy: .equal,
            toItem: view,
            attribute: .centerX,
            multiplier: 1,
            constant: 0)
        
        let constraint1 = NSLayoutConstraint(
            item: button,
            attribute: .centerY,
            relatedBy: .equal,
            toItem: view,
            attribute: .centerY,
            multiplier: 1,
            constant: 0)
        
        let constraint2 = NSLayoutConstraint(
            item: label,
            attribute: .top,
            relatedBy: .equal,
            toItem: button,
            attribute: .top,
            multiplier: 1,
            constant: 100)
        
        let constrain3 = NSLayoutConstraint(
            item: label,
            attribute: .centerX,
            relatedBy: .equal,
            toItem: button,
            attribute: .centerX,
            multiplier: 1,
            constant: 0)
        NSLayoutConstraint.activate([constraint,constraint1,constraint2,constrain3])
    }
    
    
}

