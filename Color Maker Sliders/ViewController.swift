//
//  ViewController.swift
//  Color Maker Sliders
//
//  Created by Warren Hansen on 8/24/16.
//  Copyright © 2016 Warren Hansen. All rights reserved.
/*--------------------------------------------------------------------|
|         Sliders intentionally set to bottom to make it              |
|         easier to see the color our user is creating                |
---------------------------------------------------------------------*/

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myView: UIView!
    
    @IBOutlet weak var redSlider: UISlider!
    
    @IBOutlet weak var greenSlider: UISlider!
    
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // UIView border
        myView.layer.borderWidth = 3
        myView.layer.borderColor = UIColor.whiteColor().CGColor
        
        // custom thumb color
        redSlider.thumbTintColor = UIColor.redColor()
        greenSlider.thumbTintColor = UIColor.greenColor()
        blueSlider.thumbTintColor = UIColor.blueColor()
        
        // set targets for sliders
        redSlider.addTarget(self, action: #selector(ViewController.changeColorComponent), forControlEvents: UIControlEvents.ValueChanged)
        
        greenSlider.addTarget(self, action: #selector(ViewController.changeColorComponent), forControlEvents: UIControlEvents.ValueChanged)
        
        blueSlider.addTarget(self, action: #selector(ViewController.changeColorComponent), forControlEvents: UIControlEvents.ValueChanged)
        
        // Set colorView on launch
        changeColorComponent()
        
    }
    
    @IBAction func changeColorComponent() {
        
        // Make sure the program doesn't crash if the controls aren't connected
        if self.redSlider == nil {
            return
        }
        // adjust colr mix with sliders
        let r: CGFloat = CGFloat(self.redSlider.value)
        let g: CGFloat = CGFloat(self.greenSlider.value)
        let b: CGFloat = CGFloat(self.blueSlider.value)
        
        myView.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1)
    }
}