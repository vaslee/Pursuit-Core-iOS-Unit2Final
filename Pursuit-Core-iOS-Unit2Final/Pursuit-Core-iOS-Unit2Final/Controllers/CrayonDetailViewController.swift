//
//  CrayonDetailViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by TingxinLi on 11/30/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class CrayonDetailViewController: UIViewController {

    var myCrayons: Crayon!
    
    
    @IBOutlet weak var nameOfColor: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    
    var currentRedSliperValue: Float = 0.0 {
        didSet {
            redColor.text = "\(currentRedSliperValue)"
        }
    }
    
    @IBOutlet weak var redColor: UILabel!
    
    @IBOutlet weak var greenSlider: UISlider!
    
    var currentGreenSliperValue: Float = 0.0 {
        didSet {
            greenColor.text = "\(currentGreenSliperValue)"
        }
    }
    
    @IBOutlet weak var greenColor: UILabel!
    
    @IBOutlet weak var blueSlider: UISlider!
    
    var currentBlueSliperValue: Float = 0.0 {
        didSet {
            blueColor.text = "\(currentBlueSliperValue)"
        }
    }
    
    @IBOutlet weak var blueColor: UILabel!
    
    @IBOutlet weak var resetButton: UIButton!
    
    @IBOutlet weak var aphlaStepper: UIStepper!
    
    var currentStepperValue = 0.0 {
        didSet {
            aphlaValue.text = "\(currentStepperValue)"
        }
    }
    
    @IBOutlet weak var aphlaValue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        redColor.text = "\(currentRedSliperValue)"
        //redSlider.value = 100
        redSlider.minimumValue = 0
        redSlider.maximumValue = 255
        
        greenColor.text = "\(currentGreenSliperValue)"
        //greenSlider.value = 100
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 255
        
        blueColor.text = "\(currentBlueSliperValue)"
       // blueSlider.value = 100
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 255
        
        aphlaValue.text = "\(currentStepperValue)"
        aphlaStepper.minimumValue = 0
        aphlaStepper.maximumValue = 1
        aphlaStepper.stepValue = 0.1
        
        view.backgroundColor = UIColor.init(displayP3Red: CGFloat(myCrayons.red / 255), green: CGFloat(myCrayons.green / 255), blue: CGFloat(myCrayons.blue / 255), alpha: 1)
       
    }
    
    @IBAction func redSlider(_ sender: UISlider) {
        currentRedSliperValue = sender.value
        self.view.backgroundColor = UIColor.init(displayP3Red: CGFloat(redSlider.value / 255), green: CGFloat(greenSlider.value / 255), blue: CGFloat(blueSlider.value / 255), alpha: 1)
    }
    @IBAction func greenSlider(_ sender: UISlider) {
        currentGreenSliperValue = sender.value
         self.view.backgroundColor = UIColor.init(displayP3Red: CGFloat(redSlider.value / 255), green: CGFloat(greenSlider.value / 255), blue: CGFloat(blueSlider.value / 255), alpha: 1)
    }
    @IBAction func blueSlider(_ sender: UISlider) {
        currentBlueSliperValue = sender.value
       self.view.backgroundColor = UIColor.init(displayP3Red: CGFloat(redSlider.value / 255), green: CGFloat(greenSlider.value / 255), blue: CGFloat(blueSlider.value / 255), alpha: 1)
    }
    
    @IBAction func stepper(_ sender: UIStepper) {
        currentStepperValue = sender.value
        self.view.backgroundColor = UIColor.init(displayP3Red: CGFloat(redSlider.value / 255), green: CGFloat(greenSlider.value / 255), blue: CGFloat(blueSlider.value / 255), alpha: 1)
        
    }
    
    
    @IBAction func reset(_ sender: UIButton) {
        
       view.backgroundColor = UIColor.init(displayP3Red: CGFloat(myCrayons.red / 255), green: CGFloat(myCrayons.green / 255), blue: CGFloat(myCrayons.blue / 255), alpha: 1)
        
    }
    
    
    
    
    
    
}
