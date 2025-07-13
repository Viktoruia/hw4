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

//3. Написать функцию, которая выводит в консоль квадрат переданного числа.

func square(number: Int) -> Int {
    return number * number
}
print("Квадрат числа равен - \(square(number: 4))")

//4. Создать функции, которые будут суммировать, вычитать, умножать и делить числа
//sum(num1:num2:).

func summ(a: Double, b: Double) -> Double {
    return a + b
}
print("Сумма чисел равна - \(summ(a: 34.654578708846758, b: 65.7567894567895678))")

func difference(a: Int, b: Int) -> Int {
    return a - b
}
print("Разность чисел равна - \(difference(a: 45, b: 23))")

func myltiply(a: Float, b: Float) -> Float {
    return a * b
}
print("Произведение чисел равно - \(myltiply(a: 2.345678, b: 3.345))")

func div(a: Int, b: Int) -> Int {
    return a / b
}
print("Частное чисел равно - \(div(a: 45, b: 5))")

//5. Создать функцию, которая принимает параметры и вычисляет площадь круга.

func areaCircle(const: Double, radius: Double) -> Double {
    return const * radius * radius
}
print("Площадь круга равна - \(areaCircle(const: Double.pi, radius: 12.3))")
