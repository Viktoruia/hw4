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

//6. Создать функцию, которая принимает логический тип “ночь ли сегодня” и возвращает
//строку с описанием времени суток.
func isDay(isNigt: Bool) -> String {
    if isNigt == true{
        return "Сегодня ночь"
    } else {
        return "Сегодня день"
    }
}
print(isDay(isNigt: false))

//7. Создать функцию, принимающую 1 аргумент — число от 0 до 100, и возвращающую
//true, если оно простое, и false, если сложное.

func simplNumber(a: Int) -> Bool {
    if a >= 2 {
        for i in 2 ..< a {
            if a % i == 0 {
                return false
            }
        }
    } else {return false}
    return true
}
print(simplNumber(a: 11))

//8. Создать функцию, принимающую 1 аргумент — номер месяца (от 1 до 12), и
//возвращающую время года, которому этот месяц принадлежит (зима, весна, лето или
//осень).

func month(numberMonth: Int) -> String {
    switch numberMonth {
    case 1, 2, 12:
        return "Зима"
    case 3...5:
        return "Весна"
    case 6...8:
        return "Лето"
    case 9...11:
        return "Осень"
    default:
        return "Такого месяца нет"
    }
}
print(month(numberMonth: 10))
