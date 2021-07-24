import UIKit

enum Start {
    case on, off
}
enum Win {
    case open, close
}
enum Trunk {
    case full, empty
}
enum CarBrand {
    case KIA
    case BMW
    case Volkswagen
    case Scania
}

struct SportCar {
    var mark: CarBrand
    let year: Int
    var vTrunk: Trunk
    var onOrOff: Start
    var openOrClose: Win
    mutating func changeWinStatus(winStatus: Win) {
            self.openOrClose = winStatus
    }
    mutating func changeCarStatus(carStatus: Start){
            self.onOrOff = carStatus
    }
}
struct TrunkCar {
    var mark: CarBrand
    let year: Int
    var vTrunk: Trunk
    var color: String
    var onOrOff: Start
    var openOrClose: Win
    mutating func changeColor(color: String) {
        switch color {
        case "white":
            self.color = "white"
        case "red":
            self.color = "red"
        default:
            print ("not found")
        }
    }
}

var kiaCar = SportCar(mark: .KIA, year: 2021, vTrunk: .empty, onOrOff: .off, openOrClose:.close)
var trunkCar = TrunkCar(mark: .Volkswagen, year: 2007, vTrunk: .full, color: "red", onOrOff: .off, openOrClose: .open)

print ("Инфорация о спортивном автомобиле марки \(kiaCar.mark) : \(kiaCar.year) года выпуска. Состояние багажника: \(kiaCar.vTrunk), двигателя \(kiaCar.onOrOff), окон \(kiaCar.openOrClose).")

kiaCar.changeCarStatus(carStatus: .on)
kiaCar.changeWinStatus(winStatus: .close)
print ("Инфорация о спортивном автомобиле марки \(kiaCar.mark) : \(kiaCar.year) года выпуска. Состояние багажника: \(kiaCar.vTrunk), двигателя \(kiaCar.onOrOff), окон \(kiaCar.openOrClose).")

kiaCar.changeCarStatus(carStatus: .off)
kiaCar.changeWinStatus(winStatus: .open)
print ("Инфорация о спортивном автомобиле марки \(kiaCar.mark) : \(kiaCar.year) года выпуска. Состояние багажника: \(kiaCar.vTrunk), двигателя \(kiaCar.onOrOff), окон \(kiaCar.openOrClose).")

kiaCar.onOrOff = .on
kiaCar.vTrunk = .full
trunkCar.changeColor(color: "white")
trunkCar.mark = .Scania

print ("Инфорация о спортивном автомобиле марки \(kiaCar.mark) : \(kiaCar.year) года выпуска. Состояние багажника: \(kiaCar.vTrunk), двигателя \(kiaCar.onOrOff).")
