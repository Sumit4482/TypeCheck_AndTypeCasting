//
//  ViewController.swift
//  TypeCheckAndCasting
//
//  Created by E5000855 on 27/06/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var vehicles: [Vehicle] = []
    var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .black
        setupVehicles()
        setupTableView()
        
        // Describe vehicles
        describeVehicles(vehicles: vehicles)
    }
    
    func setupVehicles() {
        let c1 = Car(topSpeed: 100, numberOfWheels: 4, numberOfDoors: 4)
        let c2 = Car(topSpeed: 200, numberOfWheels: 4, numberOfDoors: 4)
        let b1 = Bike(topSpeed: 100, numberOfWheels: 2, numOfGears: 4)
        let b2 = Bike(topSpeed: 200, numberOfWheels: 2, numOfGears: 4)
        
        vehicles.append(c1)
        vehicles.append(b1)
        vehicles.append(c2)
        vehicles.append(b2)
    }

    func setupTableView() {
        tableView = UITableView(frame: self.view.bounds)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.view.addSubview(tableView)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vehicles.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let vehicle = vehicles[indexPath.row]
        
        if let car = vehicle as? Car {
            cell.textLabel?.text = "Car - Top Speed: \(car.topSpeed), Doors: \(car.numberOfDoors)"
        } else if let bike = vehicle as? Bike {
            cell.textLabel?.text = "Bike - Top Speed: \(bike.topSpeed), Gears: \(bike.numOfGears)"
        } else {
            cell.textLabel?.text = "Vehicle - Top Speed: \(vehicle.topSpeed), Wheels: \(vehicle.numberOfWheels)"
        }
        
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vehicle = vehicles[indexPath.row]
        vehicle.move()
    }
    
}
func describeVehicles(vehicles: [Vehicle]) -> String {
    var output = ""

    for vehicle in vehicles {
        if let car = vehicle as? Car {
            output += "Car Top Speed is \(car.topSpeed) and Number of Doors is \(car.numberOfDoors)\n"
        } else if let bike = vehicle as? Bike {
            output += "Bike Top Speed is \(bike.topSpeed) and Number of Gears is \(bike.numOfGears)\n"
        }
    }

    for vehicle in vehicles {
        if vehicle is Car {
            output += "\(vehicle) is Car\n"
        } else if vehicle is Bike {
            output += "\(vehicle) is Bike\n"
        }
    }

    return output
}

