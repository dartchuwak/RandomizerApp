//
//  File.swift
//  Randomizer
//
//  Created by Evgenii Mikhailov on 20.10.2022.
//

import Foundation


class RandomNumber {
    var randomNumber: String = ""
    var fromNumber = 0
    var toNumber = 100
    
    func generateRandomNumber () -> String {
        return String(Int.random(in: fromNumber...toNumber))
    }
    
}
