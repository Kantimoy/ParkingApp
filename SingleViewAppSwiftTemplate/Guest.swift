//
//  Guest.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Kantimoy Sur on 2019-07-07.
//  Copyright © 2019 Treehouse. All rights reserved.
//

import Foundation


class Guest {
    let personalInformation: PersonalInformation?
    let guestType: GuestType
    let accessArea: AccessArea
    let rideAccess: RideAccess
    
    init(personalInformation: PersonalInformation?, guestType: GuestType, accessArea: AccessArea, rideAccess: RideAccess) throws {
        
        guard let personalInformation = personalInformation, let _ = personalInformation.dateOfBirth else {
            throw PersonalInformationError.missingDateOfBirth
        }
        self.personalInformation = personalInformation
        self.guestType = guestType
        self.accessArea = accessArea
        self.rideAccess = rideAccess
    }
    
    func checkRideAccessFor(guest: GuestType) -> (allowedAccess: Bool, andSkipLine: Bool){
        
        switch guest {
        case .classic: return (allowedAccess: true, andSkipLine: false)
        case .vip: return (allowedAccess: true, andSkipLine: true)
        case .freeChild: return (allowedAccess: true, andSkipLine: false)
        }
        
    }
    
    func checkAccess(for guest: GuestType,in area: AccessArea) -> Bool {
        if guest == .classic && area == .amusementArea {
            return true
        } else if guest == .vip && area == .amusementArea {
            return true
        } else if guest == .freeChild && area == .amusementArea {
            return true
        } else {
            return false
        }
    }
    
    func getDiscount(for guest: GuestType) -> (food: Int?, merchandise: Int?) {
        switch guest {
        case .classic: return (food: nil, merchandise: nil)
        case .vip: return (food: 10,merchandise: 20)
        case .freeChild: return (food: nil, merchandise: nil)
        }
    }
    
}
