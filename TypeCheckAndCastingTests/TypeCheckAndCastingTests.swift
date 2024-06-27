//
//  TypeCheckAndCastingTests.swift
//  TypeCheckAndCastingTests
//
//  Created by E5000855 on 27/06/24.
//

import XCTest
@testable import TypeCheckAndCasting

final class TypeCheckAndCastingTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    func testCarInitialization() {
          let car = Car(topSpeed: 100, numberOfWheels: 4, numberOfDoors: 4)
          
          XCTAssertEqual(car.topSpeed, 100)
          XCTAssertEqual(car.numberOfWheels, 4)
          XCTAssertEqual(car.numberOfDoors, 4)
      }
    
     func testMoveMethod() {
        let vehicle = Vehicle(topSpeed: 100, numberOfWheels: 4)
        
         XCTAssertEqual(vehicle.move(), "Moving")
      }

      func testBikeInitialization() {
          let bike = Bike(topSpeed: 80, numberOfWheels: 2, numOfGears: 5)
          
          XCTAssertEqual(bike.topSpeed, 80)
          XCTAssertEqual(bike.numberOfWheels, 2)
          XCTAssertEqual(bike.numOfGears, 5)
      }

      func testCarMove() {
          let car = Car(topSpeed: 100, numberOfWheels: 4, numberOfDoors: 4)
          
          XCTAssertEqual(car.move(), "Car is Moving")
      }

      func testBikeMove() {
          let bike = Bike(topSpeed: 80, numberOfWheels: 2, numOfGears: 5)
          
          XCTAssertEqual(bike.move(), "Bike is Moving")
      }

      func testDescribeVehicles() {
          let c1 = Car(topSpeed: 100, numberOfWheels: 4, numberOfDoors: 4)
          let c2 = Car(topSpeed: 200, numberOfWheels: 4, numberOfDoors: 4)
          let b1 = Bike(topSpeed: 100, numberOfWheels: 2, numOfGears: 4)
          let b2 = Bike(topSpeed: 200, numberOfWheels: 2, numOfGears: 4)
          
          let vehicles: [Vehicle] = [c1, b1, c2, b2]
          
          let expectedOutput = """
          Car Top Speed is 100 and Number of Doors is 4
          Bike Top Speed is 100 and Number of Gears is 4
          Car Top Speed is 200 and Number of Doors is 4
          Bike Top Speed is 200 and Number of Gears is 4
          \(c1) is Car
          \(b1) is Bike
          \(c2) is Car
          \(b2) is Bike
          """
          
          let actualOutput = describeVehicles(vehicles: vehicles)
          
          XCTAssertEqual(actualOutput.trimmingCharacters(in: .whitespacesAndNewlines), expectedOutput.trimmingCharacters(in: .whitespacesAndNewlines))
      }

      func testEmptyVehiclesArray() {
          let vehicles: [Vehicle] = []
          
          let expectedOutput = ""
          let actualOutput = describeVehicles(vehicles: vehicles)
          
          XCTAssertEqual(actualOutput.trimmingCharacters(in: .whitespacesAndNewlines), expectedOutput.trimmingCharacters(in: .whitespacesAndNewlines))
      }

      func testAllCars() {
          let c1 = Car(topSpeed: 100, numberOfWheels: 4, numberOfDoors: 4)
          let c2 = Car(topSpeed: 200, numberOfWheels: 4, numberOfDoors: 4)
          let vehicles: [Vehicle] = [c1, c2]
          
          let expectedOutput = """
          Car Top Speed is 100 and Number of Doors is 4
          Car Top Speed is 200 and Number of Doors is 4
          \(c1) is Car
          \(c2) is Car
          """
          
          let actualOutput = describeVehicles(vehicles: vehicles)
          
          XCTAssertEqual(actualOutput.trimmingCharacters(in: .whitespacesAndNewlines), expectedOutput.trimmingCharacters(in: .whitespacesAndNewlines))
      }

      func testAllBikes() {
          let b1 = Bike(topSpeed: 100, numberOfWheels: 2, numOfGears: 4)
          let b2 = Bike(topSpeed: 200, numberOfWheels: 2, numOfGears: 4)
          let vehicles: [Vehicle] = [b1, b2]
          
          let expectedOutput = """
          Bike Top Speed is 100 and Number of Gears is 4
          Bike Top Speed is 200 and Number of Gears is 4
          \(b1) is Bike
          \(b2) is Bike
          """
          
          let actualOutput = describeVehicles(vehicles: vehicles)
          
          XCTAssertEqual(actualOutput.trimmingCharacters(in: .whitespacesAndNewlines), expectedOutput.trimmingCharacters(in: .whitespacesAndNewlines))
      }

      func testMixedVehicles() {
          let c1 = Car(topSpeed: 100, numberOfWheels: 4, numberOfDoors: 4)
          let b1 = Bike(topSpeed: 100, numberOfWheels: 2, numOfGears: 4)
          let c2 = Car(topSpeed: 200, numberOfWheels: 4, numberOfDoors: 4)
          let b2 = Bike(topSpeed: 200, numberOfWheels: 2, numOfGears: 4)
          let vehicles: [Vehicle] = [c1, b1, c2, b2]
          
          let expectedOutput = """
          Car Top Speed is 100 and Number of Doors is 4
          Bike Top Speed is 100 and Number of Gears is 4
          Car Top Speed is 200 and Number of Doors is 4
          Bike Top Speed is 200 and Number of Gears is 4
          \(c1) is Car
          \(b1) is Bike
          \(c2) is Car
          \(b2) is Bike
          """
          
          let actualOutput = describeVehicles(vehicles: vehicles)
          
          XCTAssertEqual(actualOutput.trimmingCharacters(in: .whitespacesAndNewlines), expectedOutput.trimmingCharacters(in: .whitespacesAndNewlines))
      }

}
