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

enum AccessArea {
    case amusementArea
}

enum RideAccess {
    case allAccess
    case skipLine
}

struct PersonalInformation {
    let firstName: String?
    let lastName: String?
    let dateOfBirth: Int?
    let streetAddress: String?
    let city: String?
    let state: String?
    let zipCode: String?
}

enum GuestError: Error {
    case missingBirthday
}

class Guest {
    let personalInformation: PersonalInformation?
    let guestType: GuestType
    let accessArea: AccessArea
    let rideAccess: RideAccess
    
    init(personalInformation: PersonalInformation?, guestType: GuestType, accessArea: AccessArea, rideAccess: RideAccess) throws {
        
        guard let personalInformation = personalInformation else {
            throw GuestError.missingBirthday
        }
        self.personalInformation = personalInformation
        self.guestType = guestType
        self.accessArea = accessArea
        self.rideAccess = rideAccess
    }
    
}
