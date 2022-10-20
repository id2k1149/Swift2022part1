
import Foundation
//: # Lesson 5

//: ## Функции

/*:
 
    func nameOfFunction() {
        some code
    }
 
 */

func addingTwoNumbers() {
    let a = 6
    let b = 2
    let c = a + b
    
    print(c)
}

addingTwoNumbers()

let someAction = addingTwoNumbers

someAction()
addingTwoNumbers()

//: ### Функции с возвращаемыми значениями

/*:
    func nameOfFunction() -> Data Type {
        some code
        return some value
    }
 
 */

func sumTwoNumbers() -> Int {
    let a = 6
    let b = 2
    
    return a + b
}


var result = sumTwoNumbers()
print(result)
//: ### Функции с параметрами

/*:
    func name(argumentOne parameterOne: Data Type, argumentTwo parameterTwo: Data Type) {
        some code
    }
 */

// Функция с параметрами без аргументов

func sumTwoNumbers(a: Int, b: Int) -> Int {
    a + b
}


result = sumTwoNumbers(a: 4, b: 5)


// Функция с параметрами и аргументами


func sumTwoNumbers(number a: Int, andNumber b: Int) -> Int {
     a + b
}


result = sumTwoNumbers(number: 4, andNumber: 5)

func sumTwoNumbers(_ a: Int, _ b: Int) -> Int {
     a + b
}

result = sumTwoNumbers(3, 4)
print(result)

func sumTwoNumbers(_ a: Int, and b: Int) -> Int {
     a + b
}

sumTwoNumbers(3, and: 5)
//: [Next](@next)
