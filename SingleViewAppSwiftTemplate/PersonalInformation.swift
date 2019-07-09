//
//  Rules.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Kantimoy Sur on 2019-07-08.
//  Copyright © 2019 Treehouse. All rights reserved.
//

import Foundation

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

class DateOfBirth {
    let year: Int
    let month: Int
    let day: Int
    
    init(year: Int, month: Int, day: Int) {
        self.year = year
        self.month = month
        self.day = day
    }
    
    func calculateChildsAge() -> Int? {

        let dateOfBirth = Calendar.current.date(from: DateComponents(calendar: nil, timeZone: nil, era: nil, year: year, month: month, day: day, hour: nil, minute: nil, second: nil, nanosecond: nil, weekday: nil, weekdayOrdinal: nil, quarter: nil, weekOfMonth: nil, weekOfYear: nil, yearForWeekOfYear: nil))
        
        if let age = dateOfBirth?.age {
            return age
        }
        return nil
    }
}
