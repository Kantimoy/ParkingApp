//
//  Guest.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Kantimoy Sur on 2019-07-07.
//  Copyright © 2019 Treehouse. All rights reserved.
//

import Foundation

enum GuestType {
    case classic
    case vip
    case freeChild
}

//Error for Guest(Child).
enum GuestError: Error {
    case overAge(description: String)
    case notAllowed(decription: String)
    case discountNotallowed(decription: String)
}


class Guest {
    let personalInformation: PersonalInformation?
    let guestType: GuestType
    
    init(personalInformation: PersonalInformation?, guestType: GuestType) throws {
        self.personalInformation = personalInformation
        self.guestType = guestType
        try checkIfChild()

    }
    
    //Checks if child's age is available.
    //Also, checks is age is less than 5 years.
    private func checkIfChild() throws {
        if guestType == .freeChild {
            guard let age = personalInformation?.age else {
                throw PersonalInformationError.missingDateOfBirth(description: "Did not provide Birth Date.")
            }
            if age >= 5 {
                throw GuestError.overAge(description: "Change Guest Type, child is more than 5 years old.")
            }
        }
    }
    
    func swipe() -> (isAccessAllowed: Bool, canSkipLine: Bool){

        switch guestType {
        case .classic: return (isAccessAllowed: true, canSkipLine: false)
        case .vip: return (isAccessAllowed: true, canSkipLine: true)
        case .freeChild: return (isAccessAllowed: true, canSkipLine: false)
        }
    }
    
    func swipe(area: AccessArea) throws -> Bool {
        
        if guestType == .classic && area == .amusementArea {
            return true
        } else if guestType == .vip && area == .amusementArea {
            return true
        } else if guestType == .freeChild && area == .amusementArea {
            return true
        } else {
            throw GuestError.notAllowed(decription: "Not allowed at \(area)")
        }
    }
    
    func getDiscountIn() throws -> (food: Int?, merchandise: Int?) {
        switch guestType {
        case .classic: throw GuestError.discountNotallowed(decription: "No Discount.")
        case .vip: return (food: 10,merchandise: 20)
        case .freeChild: throw GuestError.discountNotallowed(decription: "No Discount.")
        }
    }
    
}
