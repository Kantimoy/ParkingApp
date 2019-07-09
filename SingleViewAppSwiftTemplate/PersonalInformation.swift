//
//  Rules.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Kantimoy Sur on 2019-07-08.
//  Copyright © 2019 Treehouse. All rights reserved.
//

import Foundation

//Error for Personal Information only.
enum PersonalInformationError: Error {
    case missingFirstName(description: String)
    case missingLastName(description: String)
    case missingDateOfBirth(description: String)
    case missingStreetAddress(description: String)
    case missingCity(description: String)
    case missingState(description: String)
    case missingZipCode(description: String)
}

class PersonalInformation {
    let firstName: String?
    let lastName: String?
    let age: Int?
    let streetAddress: String?
    let city: String?
    let state: String?
    let zipCode: String?
    
    init (firstName: String?, lastName: String?, dateOfBirth: DateOfBirth?, streetAddress: String?, city: String?, state: String?, zipCode: String?) {
        
        self.firstName = firstName
        self.lastName = lastName
        self.age = dateOfBirth?.calculateChildsAge()
        self.streetAddress = streetAddress
        self.city = city
        self.state = state
        self.zipCode = zipCode
    }
    convenience init() {
        self.init(firstName: nil, lastName: nil, dateOfBirth: nil, streetAddress: nil, city: nil, state: nil, zipCode: nil)
    }
    
    convenience init(dateOfBirth: DateOfBirth?) {
        self.init(firstName: nil, lastName: nil, dateOfBirth: dateOfBirth, streetAddress: nil, city: nil, state: nil, zipCode: nil)
    }
}

extension Date {
    var age: Int {
        return Calendar.current.dateComponents([.year], from: self, to: Date()).year!
    }
}
