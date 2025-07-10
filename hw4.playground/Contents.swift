import UIKit

var greeting = "Hello, playground"

//1. Написать функцию, которая:
//- Будет просто выводить в консоль ”Hello, world!”
//.
//- Будет принимать аргумент “имя” и выводить в консоль “Hello, имя” (вызов функции
//должен быть следующим - printHi(“Misha”)).
//- Будет принимать аргумент имя и возвращать строку приветствия “Hello! имя”

func first() {
    print("Hello, world!")
}
first()

func second(name: String) {
    print("Hello, \(name)")
}
second(name: "Vika")

func third(name: String) -> String {
    return "Hello, \(name)"
}
print(third(name: "Vika"))

//2. Написать функцию, которая принимает две строки и возвращает сумму количества
//символов двух строк.

func strings(firstString: String, secondString: String) -> Int {
    return firstString.count + secondString.count
}
print("Сумма символов двух строк равна \(strings(firstString: "fghjkl", secondString: "fjml"))")
