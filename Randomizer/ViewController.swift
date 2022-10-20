//
//  ViewController.swift
//  MyDayApp
//
//  Created by Evgenii Mikhailov on 11.10.2022.
//

import UIKit



class ViewController: UIViewController {
    
    let random = RandomNumber()
    @IBOutlet weak var toLabel: UILabel!
    @IBOutlet weak var fromLabel: UILabel!
    @IBOutlet weak var toSlider: UISlider!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var fromSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        becomeFirstResponder()
        resultLabel.text = random.generateRandomNumber()
        
    }
    
    override var canBecomeFirstResponder: Bool {
        return true
    }
    
    override func motionBegan(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake{
            resultLabel.text = random.generateRandomNumber()
    }
    
        func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        }
        
    }
    
    @IBAction func toSliderChanged(_ sender: Any) {
        if Int(toSlider.value) <= Int(fromSlider.value) {
            toSlider.value = fromSlider.value + 1
        }
        random.toNumber = Int(toSlider.value)
        toLabel.text = "\(random.toNumber)"

    }
    
    @IBAction func fromSliderChanged(_ sender: Any) {
        if Int(fromSlider.value) >= Int(toSlider.value) {
            fromSlider.value = toSlider.value - 1
        }
        random.fromNumber = Int(fromSlider.value)
        fromLabel.text = "\(random.fromNumber)"
    }
    @IBAction func generateButton() {
        
        resultLabel.text = random.generateRandomNumber()
    }
    
}

