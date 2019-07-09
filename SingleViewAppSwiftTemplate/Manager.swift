//
//  Protocols.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Kantimoy Sur on 2019-07-07.
//  Copyright © 2019 Treehouse. All rights reserved.
//

import Foundation

class Manager: Employee {
    
    override func swipe(area: AccessArea) -> Bool {
        return true
    }
    
    override func swipe() -> (isAccessAllowed: Bool, canSkipLine: Bool) {
        return (isAccessAllowed: true, canSkipLine: true)
    }
    
    override func getDiscount() -> (food: Int, merchandise: Int) {
        return (food: 25, merchandise: 25)
    }
    
    
}

