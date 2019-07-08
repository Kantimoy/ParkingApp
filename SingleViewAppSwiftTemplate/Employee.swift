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
    let accessArea: AccessArea
    let rideAccess: RideAccess
    
    init(personalInformation: PersonalInformation, employee: EmployeeType, accessArea: AccessArea, rideAccess: RideAccess) {
        
        self.personalInformation = personalInformation
        self.employee = employee
        self.accessArea = accessArea
        self.rideAccess = rideAccess
    }
    
    
}

