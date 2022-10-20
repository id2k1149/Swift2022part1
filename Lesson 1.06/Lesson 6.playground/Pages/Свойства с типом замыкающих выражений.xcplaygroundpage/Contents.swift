//: [Previous](@previous)

//: Свойства с типом замыкающих выражений
let completion: (Int, Int) -> Int = {
    $0 + $1
}

completion(7, 9)
//: Захват значений

var numberOne = 3
var numberTwo = 5

let closure: () -> Int = {[numberOne, numberTwo] in numberOne + numberTwo}

closure()

numberOne = 10
numberTwo = 7

closure()


