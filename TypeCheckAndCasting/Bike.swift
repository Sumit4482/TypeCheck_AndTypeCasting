//
//  Bike.swift
//  TypeCheckAndCasting
//
//  Created by E5000855 on 27/06/24.
//

import Foundation

class Bike: Vehicle {
    var numOfGears: Int

    init(topSpeed: Int, numberOfWheels: Int, numOfGears: Int) {
        self.numOfGears = numOfGears
        super.init(topSpeed: topSpeed, numberOfWheels: numberOfWheels)
    }

    override func move()-> String{
        print("Bike is Moving")
        return "Bike is Moving"
    }
}
