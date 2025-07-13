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

//9*. Создать функцию, которая считает факториал введённого числа.
func factorial(a: Int) -> Int{
    if a == 0 {
        return 0
    }
    var res = 1
    for i in 1...a {
        res *= i
    }
    return res
}
print("Факториал введённого числа равен - \(factorial(a: 4))")

//10*. Создать функцию, которая выводит все числа последовательности Фибоначчи до
//введённого индекса. Например fib(n:6) -> 0, 1, 1, 2, 3, 5, 8
func fibo(index: Int) -> [Int]{
    var number = [0, 1]
    if index <= 1 {
        return number.prefix(index + 1).map { $0 }
    }
    for i in 2...index {
        let nextFibo = number[i - 1] + number[i - 2]
        number.append(nextFibo)
    }
    return number
}
print("Последовательность фибоначи - \(fibo(index: 9))")

//11*. Создать функцию, которая считает сумму цифр четырехзначного числа,
//переданного в параметры функции

func summNumbers(number: Int) -> Int {
        var sum = 0
        var newNumber = number
        while newNumber > 0 {
            sum += newNumber % 10
            newNumber /= 10
        }
    return sum
}
print(summNumbers(number: 1234))

// Дополнительно(функции высшего порядка:
//1. Есть массив целых чисел. Необходимо получить массив строк, где каждое число возведено в квадрат и записано как текст.

let numbers = [1, 2, 3, 4, 5, 6]
let newNumber = numbers.map { numbers in
    String(numbers * numbers)
}
print(newNumber)
