//
//  ViewController.swift
//  MyDayApp
//
//  Created by Evgenii Mikhailov on 11.10.2022.
//

import UIKit



class ViewController: UIViewController {
    

    @IBOutlet weak var toLabel: UILabel!
    @IBOutlet weak var fromLabel: UILabel!
    @IBOutlet weak var toSlider: UISlider!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var fromSlider: UISlider!
    var fromNumber: Int = 0
    var toNumber: Int = 100
    
    override func viewDidLoad() {
        super.viewDidLoad()
        becomeFirstResponder()
        
    }
    
    override var canBecomeFirstResponder: Bool {
        return true
    }
    
    override func motionBegan(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake{
            resultLabel.text = String(Int.random(in: fromNumber...toNumber))
    }
    
        func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        }
        
    }
    
    @IBAction func toSliderChanged(_ sender: Any) {
        if Int(toSlider.value) <= Int(fromSlider.value) {
            toSlider.value = fromSlider.value + 1
        }
            toNumber = Int(toSlider.value)
            toLabel.text = "\(toNumber)"

    }
    
    @IBAction func fromSliderChanged(_ sender: Any) {
        if Int(fromSlider.value) >= Int(toSlider.value) {
            fromSlider.value = toSlider.value - 1
        }
        fromNumber = Int(fromSlider.value)
        fromLabel.text = "\(fromNumber)"
    }
    @IBAction func generateButton() {
        
        resultLabel.text = String(Int.random(in: fromNumber...toNumber))
    }
    
}

