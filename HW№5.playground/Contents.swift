import UIKit

enum DoorState {
    case open, close
}
enum HatchState {
    case open, close
}
enum TrunkState {
    case full, empty
}

protocol CarProtocol {
    var carBrand: String { get }
    var carColor: UIColor { get }
    var doorState: DoorState { get set }
    
    func changeDoorState(action: DoorState)
}

extension CarProtocol {
    mutating func changeDoorState(action: DoorState) {
        if doorState == .close {
            return doorState = .open
        } else {
            print ("The doors are already open.")
        }
    }
}

class SportCar: CarProtocol {
    var carBrand: String = "Nissan"
    var carColor: UIColor
    var doorState: DoorState
    var hatchState: HatchState
    
    init (carBrand: String,
          carColor: UIColor,
          doorState: DoorState,
          hatchState: HatchState) {
        self.carBrand = carBrand
        self.carColor = carColor
        self.doorState = doorState
        self.hatchState = hatchState
    }
    func changeDoorState(action: DoorState) {
    }
    func changeHatchState(action: HatchState) {
        switch hatchState {
        case .close:
            if hatchState == .close {
                print("The hatch is closed.")
            } else {
                hatchState = .open
            }
        case .open:
            if hatchState == .open {
                print("The hatch is open.")
            } else {
                hatchState = .close
            }
        }
    }
}
extension SportCar: CustomStringConvertible {
    var description: String {
        return "Mark: \(carBrand)."
    }
}
class TrunkCar: CarProtocol {
    var carBrand: String
    var carColor: UIColor
    var doorState: DoorState
    var trunkState: TrunkState
    
    init (carBrand: String,
          carColor: UIColor,
          doorState: DoorState,
          trunkState: TrunkState) {
        self.carBrand = carBrand
        self.carColor = carColor
        self.doorState = doorState
        self.trunkState = trunkState
    }
    func changeDoorState(action: DoorState) {
    }
    func changeHatchState(action: HatchState) {
        switch trunkState {
        case .full:
            if trunkState == .full {
                print("The trunk is full.")
            } else {
                trunkState = .empty
            }
        case .empty:
            if trunkState == .empty {
                print("The trunk is empty.")
            } else {
                trunkState = .full
            }
        }
    }
}
extension TrunkCar: CustomStringConvertible {
    var description: String {
        return "Trunk is \(trunkState)."
    }
}

var nissanCar = SportCar (carBrand: "Nissan", carColor: .white, doorState: .close, hatchState: .close)

print("Автомобиль марки \(nissanCar.carBrand), \(nissanCar.carColor) цвета, двери \(nissanCar.doorState), люк \(nissanCar.hatchState).")

var scaniaCar = TrunkCar (carBrand: "Scania", carColor: .red, doorState: .close, trunkState: .empty)
print("Автомобиль марки \(scaniaCar.carBrand), \(scaniaCar.carColor) цвета, двери \(scaniaCar.doorState), багажник \(scaniaCar.trunkState).")

var scaniaCar2 = TrunkCar (carBrand: "Scania", carColor: .black, doorState: .open, trunkState: .full)
print("Автомобиль марки \(scaniaCar2.carBrand), \(scaniaCar2.carColor) цвета, двери \(scaniaCar2.doorState), багажник \(scaniaCar2.trunkState).")
