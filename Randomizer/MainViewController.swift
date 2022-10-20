//
//  SecondViewController.swift
//  Randomizer
//
//  Created by Evgenii Mikhailov on 20.10.2022.
//

import UIKit
import SwiftUI

class MainViewController: UIViewController {

    


    override func viewDidLoad() {
        super.viewDidLoad()
        }
  
    
    
    @IBSegueAction func segueToSwiftUI(_ coder: NSCoder) -> UIViewController? {
        return UIHostingController(coder: coder, rootView: ContentView())
    }
    
    
    @IBAction func unwindBackButton ( segue: UIStoryboardSegue){
        
    }
    
}
