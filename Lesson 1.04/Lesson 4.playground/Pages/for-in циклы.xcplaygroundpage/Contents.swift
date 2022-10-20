//: [Previous](@previous)

import Foundation

//: ## For-in циклы

/*:
 
    for counter in lower…upper {
        some code
    }
 
 */
var sum = 0

for counter in 1...5 {
    sum += counter
}

print(sum)
//: ### Итерация по массиву

let fruits = ["apple", "banana", "pineapple",
              "apple", "pear", "apple",
              "plum", "apricot", "apple"]


var apple = 0

for fruit in fruits {
    if fruit == "apple" {
        apple += 1
    }
}


print("The number of apples is \(apple) pieces")



//: ### Итерация по словарю

let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]

for (animalName, lagCount) in numberOfLegs {
    print("\(animalName)s have \(lagCount)")
}

//: ### Итерация по тексту
let someText = "Hello!"

for char in someText {
    print(char)
}
//: [Next](@next)
