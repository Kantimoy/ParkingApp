//
//  ViewController.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Treehouse on 1/1/19.
//  Copyright © 2016 Treehouse. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: Test for All Guest.
    func testForGuest() {
        
        //    do {
        //
        //        //------------Family of four ----------
        //        let husband = PersonalInformation()
        //        let wife = PersonalInformation()
        //        let firstChild = PersonalInformation(dateOfBirth: DateOfBirth(year: 1990, month: 01, day: 1) )
        //        let anotherChild = PersonalInformation(dateOfBirth: DateOfBirth(year: 2019, month: 01, day: 01))
        //
        //
        //        //----------------------First Guest. -- Check for ride and area access.
        //
        //                let firstGuest = try Guest(personalInformation: husband, guestType: .classic)
        //                try firstGuest.swipe().canSkipLine
        //                try firstGuest.swipe(area: .kitchArea)
        //
        //        //----------------------Second Guest. -- Check for ride and area access.
        //                let secondGuest = try Guest(personalInformation: wife, guestType: .vip)
        //                try secondGuest.swipe().canSkipLine
        //                try secondGuest.swipe(area: .rideControlArea)
        //
        //
        //        //----------------------Third Guest -- when age above 5 years.
        //                let thirdGuest = try Guest(personalInformation: firstChild, guestType: .freeChild)
        //                try thirdGuest.swipe().canSkipLine
        //                try thirdGuest.swipe(area: .rideControlArea)
        //
        //
        //        //----------------------Fourth Guest. -- age less than 5 years.
        //                let fourthGuest = try Guest(personalInformation: anotherChild, guestType: .freeChild)
        //                try fourthGuest.swipe().canSkipLine
        //                try fourthGuest.swipe(area: .rideControlArea)
        //                try fourthGuest.getDiscountIn().food
        //
        //
        //    } catch {
        //        print(error)
        //    }
    }
    
    
    
    //MARK: Test for All Employee.
    func testForEmployee() {
        
        //    do {
        //
        //        //------------3 Employees ----------
        //        let first = PersonalInformation()
        //        let second = PersonalInformation(firstName: "John", lastName: "Smith", dateOfBirth: nil, streetAddress: "some street", city: "some city", state: "some state", zipCode: "some zipcode")
        //        let third = PersonalInformation(firstName: "Stanley", lastName: "nova", dateOfBirth: nil, streetAddress: "street", city: "city", state: "state", zipCode: "zip")
        //
        //
        //        //----------------------First Employee. -- Personal Info is missing.
        //
        //                let firstEmployee = try Employee(personalInformation: first, employee: .foodService)
        //                try firstEmployee.swipe().canSkipLine
        //
        //        //----------------------Second Employee(rideService) -- Check for ride and area access.
        //                let secondEmployee = try Employee(personalInformation: second, employee: .rideService)
        //                try secondEmployee.swipe().canSkipLine
        //                try print(secondEmployee.swipe(area: .rideControlArea))
        //                try print(secondEmployee.swipe(area: .kitchArea))
        //                try print(secondEmployee.getDiscount().onMerchandise)
        //
        //
        //        //----------------------Third Employee(maintenence).
        //                let thirdEmployee = try Employee(personalInformation: third, employee: .maintenence)
        //                try thirdEmployee.swipe().canSkipLine
        //                try print(thirdEmployee.swipe(area: .rideControlArea))
        //                try print(thirdEmployee.swipe(area: .kitchArea))
        //                try print(thirdEmployee.getDiscount().onFood)
        //
        //    }
        //    catch {
        //        print(error)
        //    }
    }
    
    
    
}

