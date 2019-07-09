//
//  HelperClass.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Kantimoy Sur on 2019-07-09.
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


//For checking date of birth of Guest Child.
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
