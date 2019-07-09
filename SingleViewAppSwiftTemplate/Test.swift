//
//  Test.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Kantimoy Sur on 2019-07-08.
//  Copyright © 2019 Treehouse. All rights reserved.
//

import Foundation




func testForGuest() {
    do {
        
        //------------Family of four ----------
        let husband = PersonalInformation()
        let wife = PersonalInformation()
        let firstChild = PersonalInformation(dateOfBirth: DateOfBirth(year: 1990, month: 01, day: 1) )
        let anotherChild = PersonalInformation(dateOfBirth: DateOfBirth(year: 2019, month: 01, day: 01))
        
        
        //----------------------First Guest. -- Check for ride and area access.
        
//                let firstGuest = try Guest(personalInformation: husband, guestType: .classic)
//                try firstGuest.swipe().canSkipLine
//                try firstGuest.swipe(area: .kitchArea)
        
        //----------------------Second Guest. -- Check for ride and area access.
//                let secondGuest = try Guest(personalInformation: wife, guestType: .vip)
//                try secondGuest.swipe().canSkipLine
//                try secondGuest.swipe(area: .rideControlArea)
        
        
        //----------------------Third Guest -- when age above 5 years.
//                let thirdGuest = try Guest(personalInformation: firstChild, guestType: .freeChild)
//                try thirdGuest.swipe().canSkipLine
//                try thirdGuest.swipe(area: .rideControlArea)
        
        
        //----------------------Fourth Guest. -- age less than 5 years.
//                let fourthGuest = try Guest(personalInformation: anotherChild, guestType: .freeChild)
//                try fourthGuest.swipe().canSkipLine
//                try fourthGuest.swipe(area: .rideControlArea)
//                try fourthGuest.getDiscountIn().food
        
        
    } catch {
        print(error)
    }
}
