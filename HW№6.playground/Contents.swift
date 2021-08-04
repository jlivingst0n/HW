import UIKit

struct Student {
    var name: String
    var satScore: Int
}

extension Student: CustomStringConvertible {
    var description : String {
        return "Name: \(name), SATscore: \(satScore)"
    }
}

struct Queue<T> {
    var array = [T]()
    var isEmpty: Bool {
        return array.isEmpty
    }
    var count: Int {
        return array.count
    }
    mutating func enqueue(element: T) {
        array.append(element)
    }
    mutating func dequeue() -> T? {
        if isEmpty {
            return nil
        } else {
            return array.removeFirst()
        }
    }
    var front: T? {
        return array.first
    }
    func printMyQueue() {
        print(array)
    }
}

extension Queue {
    func myFilter(predicate:(T) -> Bool) -> [T] {
        var result = [T]()
        for i in array {
            if predicate(i) {
                result.append(i)
            }
        }
        return result
    }
}
var someStudent = Queue<Student>()
someStudent.enqueue(element: .init(name: "Nikolay",
                                   satScore: 245))
someStudent.enqueue(element: .init(name: "Marina",
                                   satScore: 288))
someStudent.enqueue(element: .init(name: "Taisiya",
                                   satScore: 246))
someStudent.enqueue(element: .init(name: "Dmitriy",
                                   satScore: 291))
someStudent.enqueue(element: .init(name: "Anrew",
                                   satScore: 274))

someStudent.printMyQueue()
print(someStudent.count)
print(someStudent.front)

let entrant = someStudent.myFilter (predicate: {$0.satScore >= 270})
print(entrant)

