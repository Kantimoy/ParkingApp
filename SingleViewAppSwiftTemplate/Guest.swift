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

enum GuestError: Error {
    case OverAge(Description: String)
}


class Guest {
    let personalInformation: PersonalInformation?
    let guestType: GuestType
    
    init(personalInformation: PersonalInformation?, guestType: GuestType) throws {
        self.personalInformation = personalInformation
        self.guestType = guestType
        try checkIfChild()

    }
    
    private func checkIfChild() throws {
        if guestType == .freeChild {
            guard let age = personalInformation?.age else {
                throw PersonalInformationError.missingDateOfBirth(description: "Did not provide Birth Date.")
            }
            if age >= 5 {
                throw GuestError.OverAge(Description: "Change Guest Type, the person's age is over 5 years old.")
            }
        }
    }
    
    func checkRideAccess() throws -> (isAccessAllowed: Bool, canSkipLine: Bool){

        switch guestType {
        case .classic: return (isAccessAllowed: true, canSkipLine: false)
        case .vip: return (isAccessAllowed: true, canSkipLine: true)
        case .freeChild: return (isAccessAllowed: true, canSkipLine: false)
        }
    }
    
    func checkAccessFor(area: AccessArea) -> Bool {
        
        if guestType == .classic && area == .amusementArea {
            return true
        } else if guestType == .vip && area == .amusementArea {
            return true
        } else if guestType == .freeChild && area == .amusementArea {
            return true
        } else {
            return false
        }
    }
    
    func getDiscountIn() -> (food: Int?, merchandise: Int?) {
        switch guestType {
        case .classic: return (food: nil, merchandise: nil)
        case .vip: return (food: 10,merchandise: 20)
        case .freeChild: return (food: nil, merchandise: nil)
        }
    }
    
}
