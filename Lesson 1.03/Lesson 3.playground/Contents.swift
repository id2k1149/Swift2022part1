import UIKit

//: ## Конструкция if
/*:
    if condition {
        some code
    }
 
*/



var someNumber = 10

if someNumber < 4 {
    print("The condition is true")
}

someNumber = 1

if someNumber < 4 {
    print("The condition is true")
}






/*:
    if conditionOne {
        some code
    } else if conditionTwo {
        some code
    }
*/


someNumber = 10

if someNumber < 4 { // false
    print("The first condition is true")
} else if someNumber < 8 { // false
    print("The second condition is true")
}

someNumber = 7

if someNumber < 4 { // false
    print("The first condition is true")
} else if someNumber < 8 { // true
    print("The second condition is true")
}

someNumber = 1

if someNumber < 4 { // true
    print("The first condition is true")
} else if someNumber < 8 { // true, but never true
    print("The second condition is true")
}







/*:
    if conditionOne {
        some code
    } else if conditionTwo {
        some code
    } else {
        some code
    }
 */

someNumber = 7

if someNumber < 4 { // false
    print("The first condition is true")
} else if someNumber < 8 { // false
    print("The second condition is true")
} else if someNumber < 10 { // false
    print("The third condition is true")
} else {
    print("Nothing was true")
}


//: ### Тернарный оператор

// condition ? some code : some code


let a = 5
let b = 10
var c = 0

let boolin = true

if a < 10 {
    print("The condition is true")
} else {
    print("The condition is false")
}

a < 10 ? print("The condition is true") : print("The condition is false") // тернарный оператор


if boolin {
    c = a - b
} else {
    c = b + c
}


c = boolin ?  a - b : b + c // тернарный оператор
//: ## Switch statement





/*:
    switch значение для сопоставления {
    case значение 1:
        инструкция для первого значения
    case значение 2, значение 3:
        инструкция для второго и третьего значения
    default:
        инструкция, если совпадений с шаблонами не найдено
    }
*/

var someCharecter: Character = "a"

if someCharecter == "a" {
    print("Is an A")
} else if someCharecter == "b" {
    print("Is an B")
} else if someCharecter == "c" {
    print("Is an C")
} else {
    print("Dont know what is it")
}

someCharecter = "B"

if someCharecter == "a" || someCharecter == "A" {
    print("Is an A")
} else if someCharecter == "b" || someCharecter == "B" {
    print("Is an B")
} else if someCharecter == "c" || someCharecter == "C" {
    print("Is an C")
} else {
    print("Dont know what is it")
}


switch someCharecter {
case "a", "A":
    print("Is an A")
case "b", "B":
    print("Is an B")
case "c", "C":
    print("Is an C")
default:
    break
}
//: ### Соответствие диапазону


let approximateCount = 62
let countedThings = "moons orbiting Saturn"
let naturalCount: String

switch approximateCount {
case 0:
    naturalCount = "no"
case 1:
    naturalCount = "one"
case 2..<5:
    naturalCount = "a few"
case 5...11:
    naturalCount = "several"
case 12...99:
    naturalCount = "dozens of"
default:
    naturalCount = "many"
}

print("There are \(naturalCount) \(countedThings)")
