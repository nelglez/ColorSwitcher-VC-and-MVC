//
//  ViewController.swift
//  ColorSwitcher
//
//  Created by Nelson Gonzalez on 1/8/19.
//  Copyright © 2019 Nelson Gonzalez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var stepper: UIStepper!
    
    let colorsController = ColorsController() //instance of colorsController
    
    @IBOutlet weak var label: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        stepper.minimumValue = .infinity * -1
        stepper.maximumValue = .infinity
        
       updateViews()
    }

    @IBAction func changeColorStepper(_ sender: UIStepper) {
        //change color index in model Controller. We need an instance of it
        colorsController.currentColorIndex = Int(sender.value.magnitude) % colorsController.colors.count
        
       updateViews()
    }
    
    
    @IBAction func toggleColorOn(_ sender: UISwitch) {
        colorsController.colorOn = sender.isOn
        updateViews()
        
    }
    
    func updateViews() {
        if colorsController.colorOn {
            view.backgroundColor = colorsController.currentColor.color
            label.text = colorsController.currentColor.name
        } else {
            view.backgroundColor = .white
            label.text = nil
        }
    }
}

