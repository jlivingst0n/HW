import UIKit

//Решение квадратного уравнения ax^2 + bx + c = 0
print("Задане №1")

var a = 1.0
var b = 45.0
var c = 13.0

var x = 0.0
var x1 = 0.0
var x2 = 0.0

var d = b * b - 4 * a * c

if d > 0 {
    print ("Уравнение имеет два корня")
    x1 = (-b + sqrt(d)/2 * a)
    x1 = round(x1 * 100) / 100
    x2 = (-b - sqrt(d) / 2 * a)
    x2 = round(x2 * 100) / 100
    print (x1 , x2)

} else if d == 0 {
    print("У уравнения один корень")
    x = (-b * (sqrt(Double (d))) / (2*a))
    x = round(x * 100) / 100
    print (x)
    
} else {
    print ("Нет корней")
}


// Найти S,P и гипотенузу треугольника.
print("Задане №2")

var cat1 = 10.0
var cat2 = 7.0
var area = (cat1 * cat2) / 2
var hypo = sqrt (pow(Double(cat1), 2) * pow(Double(cat2), 2))
var per = cat1 + cat2 + hypo

print ("S треугольника = \(area), P треугольника = \(per), гипотенуза треугольника = \(hypo)")


//Сумма вклада через 5 лет
print("Задане №3")

let summ: Double = 250000
let yearPercnt: Double = 5.5
let years: Double = 5
var deposit: Double = summ * pow(1 + yearPercnt/100, 5)
deposit = round(deposit * 100) / 100
print("Ваш вклад через \(years) лет составит \(deposit) рублей.")

