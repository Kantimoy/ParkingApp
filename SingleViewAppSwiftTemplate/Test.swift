//
//  Test.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Kantimoy Sur on 2019-07-08.
//  Copyright © 2019 Treehouse. All rights reserved.
//

import Foundation



func test() {
    do {
        let firstPerson = PersonalInformation()
        let firstPersonWife = PersonalInformation()
        let firstPersonChild = PersonalInformation(dateOfBirth: DateOfBirth(year: 1993, month: 03, day: 22) )
        let firstPersonAnotherChild = PersonalInformation()
        
        
        let firstGuest = try Guest(personalInformation: firstPerson, guestType: .vip)
        let secondGuest = try Guest(personalInformation: firstPersonWife, guestType: .classic)
        let thirdGuest = try Guest(personalInformation: firstPersonChild, guestType: .freeChild)
        
        
        print(firstGuest.checkAccessFor(area: .kitchArea))
        print(try secondGuest.checkRideAccess().isAccessAllowed)
        print(thirdGuest.checkAccessFor(area: .rideControlArea))
        
    } catch {
        print(error)
    }
}
