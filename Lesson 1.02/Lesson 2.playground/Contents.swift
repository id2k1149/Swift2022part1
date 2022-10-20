import UIKit
//: ## Базовые операторы




//: ### Арифметические операторы:

var a = 9
var b = 4

a + b
a - b
a * b
a / b


//: ### Оператор остатка от деления:


a % b
-a % b
a % -b


//: ### Оператор присваивания:

a = 5
b = 10
let c = a + b

print("a equal \(a)")
print("b equal \(b)")
print("c equal \(c)")

//a = a + b

a += b // a = a + b // a = 5 + 10 // 15
a -= b // a = a - b // a = 15 - 10 // 5
a *= b // a = a * b // a = 5 * 10 // 50
a /= b // a = a / b // a = 50 / 10 // 5

//: ### Операторы сравнения:

a == b // false
a != b // true
a > b // false
a < b // true
a >= b // false
a <= b // true

//: ### Оператор логического НЕ:

let accessDeniedMassage = "ACCESS DENIED"
let welcomeMassage = "Welcome!"

var allowedEntry = false

if !allowedEntry  {
    print(accessDeniedMassage)
} else {
    print(welcomeMassage)
}

//: ### Оператор логического И:

let enteredDoorCode = true
let passedRetinaScan = false

if enteredDoorCode && passedRetinaScan {
    allowedEntry = true
}

if !allowedEntry  {
    print(accessDeniedMassage)
} else {
    print(welcomeMassage)
}

//: ### Оператор логического ИЛИ:

let hasDoorKey = false
let knowsOverridePassword = true


if hasDoorKey || knowsOverridePassword {
    allowedEntry = true
}

if !allowedEntry  {
    print(accessDeniedMassage)
} else {
    print(welcomeMassage)
}


// Комбинирование логических операторов

if (enteredDoorCode && passedRetinaScan) || hasDoorKey || knowsOverridePassword {
    allowedEntry = true
}

if !allowedEntry  {
    print(accessDeniedMassage)
} else {
    print(welcomeMassage)
}


//: ## Работа со строками:
//: ### Объявление и инициализация строк

let name = "Tim"
let surname = "Cook"
let fullName: String
let yearOfBirth = 1960
let currentYear = 2022

//: ### Многострочные литералы

var resume = """
Full name: Tim Cook
Year of birth: 1960
Age: 61
Company: Apple inc
Post: CEO
"Quotes: You are more powrful than you think"
"""

print(resume)

//: ### Конкатенация строк:

fullName = name + " " + surname
var greeting = "Hello, my name is "

greeting = greeting + fullName
greeting += fullName


//: ### Интерполяция строк


resume = """
Full name: \(fullName)
Year of birth: \(yearOfBirth)
Age: \(currentYear - yearOfBirth)
Company: Apple inc
Post: CEO
"Quotes: You are more powrful than you think"
"""

print(resume)
