//
//  extensions.swift
//  Healthcare
//
//  Created by Malik Timurkaev on 29.08.2024.
//

import Foundation


extension Float {
    
    func roundedToInt() -> Int {
        
        let roundedDown = Float(Int(self))
        
        if self - roundedDown >= 0.5 {
            return Int(roundedDown + 1)
        } else {
            return Int(roundedDown)
        }
    }
}
