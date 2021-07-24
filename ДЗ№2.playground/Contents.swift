import UIKit

//Написать функцию, которая определяет, четное число или нет.
print("Задание №1")

var simpArray = [10, 14, 8, 9, 2, 15, 22]

for myInt: Int in simpArray {
    if myInt % 2 == 0 {
        print("\(myInt) четное")
    } else {
        print("\(myInt) нечетное")
    }
}

//Написать функцию, которая определяет, делится ли число без остатка на 3.
print("Задание №2")

var newArray = [9, 20, 3, 99, 42, 16, 28]

for myInt: Int in newArray {
    if myInt % 3 == 0 {
        print("\(myInt) yes")
    } else {
        print("\(myInt) no")
    }
}

//Создать возрастающий массив из 100 чисел.
print("Задание №3")

var incArray = Array (1...100)
print(incArray)

//Удалить из этого массива все четные числа и все числа, которые не делятся на 3.
print("Задание №4")

var filteredArray = incArray.filter{($0 % 2 == 0) && ($0 % 3 != 0)}

print("\(filteredArray)")

/* Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 50 элементов. */
print("Задание №5")

func fibonacciSequence (n: Int) -> [Int]  {
    var fibArray = [Int]()
    for item in 0 ... n {
        if item == 0 {
            fibArray.append(0)
        } else if item == 1 {
            fibArray.append(1)
        } else {
            fibArray.append (fibArray[item-1] + fibArray[item-2])
        }
    }
    return fibArray
}
var fibArr = [Int] ()
var n  = 50
for i in 1...n {
    fibArr = (fibonacciSequence(n: i))
}
print(fibArr)

/* Заполнить массив элементов различными простыми числами. Натуральное число, большее единицы, называется простым, если оно делится только на себя и на единицу. Для нахождения всех простых чисел не больше заданного числа n (пусть будет 100), следуя методу Эратосфена, нужно выполнить следующие шаги:
 a. Выписать подряд все целые числа от двух до n (2, 3, 4, ..., n).
 b. Пусть переменная p изначально равна двум — первому простому числу.
 c. Зачеркнуть в списке числа от 2 + p до n, считая шагом p.
 d. Найти первое не зачёркнутое число в списке, большее, чем p, и присвоить значению переменной p это число.
 e. Повторять шаги c и d, пока возможно. */
print("Задание №6")

var n3 = 100
var a = Array (0...n3)

a[1] = 0

var p = 2
while p <= n3 {
    if a[p] != 0 {
        var j = p + p
        while j <= n3 {
            a[j] = 0
            j = j + p
        }
    }
    p += 1
}
a = a.filter{$0 != 0}
print(a)
