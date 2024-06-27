//
//  Vehicle.swift
//  TypeCheckAndCasting
//
//  Created by E5000855 on 27/06/24.
//

import Foundation

class Vehicle {
    var topSpeed: Int
    var numberOfWheels: Int

    init(topSpeed: Int, numberOfWheels: Int) {
        self.topSpeed = topSpeed
        self.numberOfWheels = numberOfWheels
    }

    func move()-> String {
        print("Moving")
        return "Moving"
    }
}
