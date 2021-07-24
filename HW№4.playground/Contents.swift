import UIKit

enum NewOrUsed {
    case new, used
}
enum StatusEngine {
    case on, off
}
enum StatusTrunk {
    case full, empty
}
class Car {
    var color: UIColor
    var doors: Int
    var status: NewOrUsed
    init(color: UIColor, doors: Int, status: NewOrUsed) {
        self.color = color
        self.doors = doors
        self.status = status
    }
}

class SportCar: Car {
    var engine: StatusEngine
    init(color: UIColor, doors: Int, status: NewOrUsed, engine: StatusEngine) {
        self.engine = engine
        super.init(color: color, doors: doors, status: status)
    }
    func startEngine () {
        engine = .on
    }
    func stopEngine() {
        engine = .off
    }
}

class TrunkCar: Car {
    var trunk: StatusTrunk
    init(color: UIColor, doors: Int, status: NewOrUsed, trunk: StatusTrunk) {
        self.trunk = trunk
        super.init(color: color, doors: doors, status: status)
    }
    func fillTheTrunk() {
        trunk = .full
    }
    func unloadTheTrunk() {
        trunk = .empty
    }
}

var bmwCar = SportCar (color: .green, doors: 3, status: .new, engine: .off)
var truck = TrunkCar (color: .brown, doors: 2, status: .used, trunk: .full)

print ("Инфорация о спортивном \(bmwCar.doors)-хдверном автомобиле марки BMW \(bmwCar.color) цвета.  Состояние машины: \(bmwCar.status), двигателя \(bmwCar.engine).")
bmwCar.startEngine()
print ("Инфорация о спортивном \(bmwCar.doors)-хдверном автомобиле марки BMW \(bmwCar.color) цвета.  Состояние машины: \(bmwCar.status), двигателя \(bmwCar.engine).")

print("Грузовой \(truck.doors)-хдверный автомобиль \(truck.color) цвета. Состояние \(truck.status). Состояние багажника \(truck.trunk).")
truck.unloadTheTrunk()
print("Грузовой \(truck.doors)-хдверный автомобиль \(truck.color) цвета. Состояние \(truck.status). Состояние багажника \(truck.trunk).")
