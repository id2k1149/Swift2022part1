import UIKit

//: # Home Work 6
/*:
 ## Задание 1
1.1 Повторите задания 3.1 - 3.4 прошлого урока.
 */

func isEven(_ number: Int) -> Bool {
    number % 2 == 0
}

func isMultipleOfThree(_ number: Int) -> Bool {
    number % 3 == 0
}

func makeSortedArray(from x: Int, to y: Int) -> [Int] {
    var array: [Int] = []
    
    for number in x...y {
        array.append(number)
    }

    return array
}

var numbers = makeSortedArray(from: 1, to: 100)

/*:
 1.2 Создайте универсальную функцию для фильтрации переданного в неё массива.
 */

func filterArray(numbers: [Int], closure: (Int) -> Bool) -> [Int] {
    var filterNumbers: [Int] = []
    
    for number in numbers {
        if !closure(number) {
            filterNumbers.append(number)
        }
    }
    
    return filterNumbers
}

/*:
 1.3 Отфильтруйте массив при помощи созданной функции, избавившись от всех четных чисел и чисел кратных трем. Для фильтрации используйте функции, определяющие кратность чисел.
 */

numbers = filterArray(numbers: numbers, closure: isEven)
numbers = filterArray(numbers: numbers, closure: isMultipleOfThree)
            
/*:
 1.4 Снова наполните массив числами от 1 до 100 и отфильтруйте его, используя блок замыкания универсальной функции.
 */

numbers = makeSortedArray(from: 1, to: 100)

// #1
filterArray(numbers: numbers, closure: { number in number % 2 == 0})
 
// #2
filterArray(numbers: numbers, closure: { $0 % 2 == 0 })
                    
// #3
numbers = filterArray(numbers: numbers) { $0 % 2 == 0 }

// #1
filterArray(numbers: numbers, closure: { number in number % 3 == 0})

// #2
filterArray(numbers: numbers, closure: { $0 % 3 == 0 })

// #3
numbers = filterArray(numbers: numbers) { $0 % 3 == 0 }
numbers

/*:
 1.5 Снова наполните массив числами от 1 до 100 и отфильтруйте его, используя для этого функцию высшего порядка `filter`
 */

numbers = makeSortedArray(from: 1, to: 100)

// #1
numbers = numbers.filter { !isEven($0) }
// #2
numbers = numbers.filter { $0 % 2 != 0 }
// #3
numbers.removeAll(where: isEven)

// #1
numbers = numbers.filter { !isMultipleOfThree($0) }
// #2
numbers = numbers.filter { $0 % 3 != 0 }
// #3
numbers.removeAll(where: isMultipleOfThree)

