//
//  Rules.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Kantimoy Sur on 2019-07-08.
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
    case kitchArea
    case rideControlArea
    case maintenanceArea
    case officeArea
}

enum RideAccess {
    case allAccess
    case skipLine
}

enum PersonalInformationError: Error {
    case missingFirstName
    case missingLastName
    case missingDateOfBirth
    case missingStreetAddress
    case missingCity
    case missingState
    case missingZipCode
}

class PersonalInformation {
    let firstName: String?
    let lastName: String?
    let dateOfBirth: Int?
    let streetAddress: String?
    let city: String?
    let state: String?
    let zipCode: String?
    
    init (firstName: String?, lastName: String?, dateOfBirth: Int?, streetAddress: String?, city: String?, state: String?, zipCode: String?) throws {
    
        guard let firstName = firstName else {
            throw PersonalInformationError.missingFirstName
        }
        guard let lastName = lastName else {
            throw PersonalInformationError.missingLastName
        }
        guard let dateOfBirth = dateOfBirth else {
            throw PersonalInformationError.missingDateOfBirth
        }
        guard let streetAddress = streetAddress else {
            throw PersonalInformationError.missingStreetAddress
        }
        guard let city = city else {
            throw PersonalInformationError.missingCity
        }
        guard let state = state else {
            throw PersonalInformationError.missingState
        }
        guard let zipCode = zipCode else {
            throw PersonalInformationError.missingZipCode
        }
        
        self.firstName = firstName
        self.lastName = lastName
        self.dateOfBirth = dateOfBirth
        self.streetAddress = streetAddress
        self.city = city
        self.state = state
        self.zipCode = zipCode
        
    }
}
