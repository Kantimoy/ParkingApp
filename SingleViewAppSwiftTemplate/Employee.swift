//
//  Employee.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Kantimoy Sur on 2019-07-08.
//  Copyright © 2019 Treehouse. All rights reserved.
//

import Foundation

enum EmployeeType {
    case foodService
    case rideService
    case Maintenence
}

class Employee {
    
    let personalInformation: PersonalInformation
    let employee: EmployeeType
    
    init(personalInformation: PersonalInformation, employee: EmployeeType) throws {
        
        guard let firstName = personalInformation.firstName else {
            throw PersonalInformationError.missingFirstName(description: "First Name is Missing.")
        }
        guard let lastName = personalInformation.lastName else {
            throw PersonalInformationError.missingLastName(description: "Last Name is Missing.")
        }
        guard let streetAddress = personalInformation.streetAddress else {
            throw PersonalInformationError.missingStreetAddress(description: "Street Address is missing")
        }
        guard let city = personalInformation.city else {
            throw PersonalInformationError.missingCity(description: "City name is missing")
        }
        guard let state = personalInformation.state else {
            throw PersonalInformationError.missingState(description: "State name is missing.")
        }
        guard let zipCode = personalInformation.zipCode else {
            throw PersonalInformationError.missingZipCode(description: "Zip code is missing.")
        }
        
        
        self.personalInformation = PersonalInformation(firstName: firstName, lastName: lastName, dateOfBirth: nil, streetAddress: streetAddress, city: city, state: state, zipCode: zipCode)
        self.employee = employee
    }
    
    func checkForRideAccess() -> (isAccessAllowed: Bool, canSkipLine: Bool){
        
        switch employee {
        case .foodService: return (isAccessAllowed: true, canSkipLine: false)
        case .rideService: return (isAccessAllowed: true, canSkipLine: false)
        case .Maintenence: return (isAccessAllowed: true, canSkipLine: false)
        }
    }
    
    func checkAccessIn(area: AccessArea) -> Bool {
        if employee == .foodService && (area == .amusementArea || area == .kitchArea ){
            return true
        } else if employee == .rideService && (area == .amusementArea || area == .rideControlArea ) {
            return true
        } else if employee == .Maintenence && (area == .amusementArea || area == .maintenanceArea || area == .kitchArea || area == .rideControlArea){
            return true
        } else {
            return false
        }
    }
    
    func getDiscount() -> (food: Int, merchandise: Int) {
        switch employee {
        default : return (food: 15, merchandise: 25)
        }
    }
    
    
}

