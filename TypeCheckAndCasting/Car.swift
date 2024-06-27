//
//  Car.swift
//  TypeCheckAndCasting
//
//  Created by E5000855 on 27/06/24.
//

import Foundation

class Car: Vehicle {
    var numberOfDoors: Int

    init(topSpeed: Int, numberOfWheels: Int, numberOfDoors: Int) {
        self.numberOfDoors = numberOfDoors
        super.init(topSpeed: topSpeed, numberOfWheels: numberOfWheels)
    }

    override func move()-> String {
        print("Car is Moving")
        return "Car is Moving"
    }
}
