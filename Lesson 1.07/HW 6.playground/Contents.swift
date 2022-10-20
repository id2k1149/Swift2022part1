import UIKit

//: # Home Work 6
/*:
 ## Задание 1
1.1 Повторите задания 3.1 - 3.4 прошлого урока.
 */

func isEvenNumber(_ number: Int) -> Bool {
   number % 2 == 0
}

let data = isEvenNumber
data(4)

func isDivisibleByThree(_ number: Int) -> Bool {
    number % 3 == 0
}

func getAscendingArray(from x: Int, to y: Int) -> [Int] {
    var numbers: [Int] = []
    for number in x...y {
        numbers.append(number)
    }
    return numbers
}

var numbers = getAscendingArray(from: 1, to: 100)

/*:
 1.2 Создайте универсальную функцию для фильтрации переданного в неё массива.
 */

func getFilteredArray(from numbers: [Int], closure: (Int) -> Bool) -> [Int] {
    var filteredNumbers: [Int] = []
    
    for number in numbers {
        if !closure(number) {
            filteredNumbers.append(number)
        }
    }
    return filteredNumbers
}

/*:
 1.3 Отфильтруйте массив при помощи созданной функции, избавившись от всех четных чисел и чисел кратных трем. Для фильтрации используйте функции, определяющие кратность чисел.
 */

numbers = getFilteredArray(from: numbers, closure: isEvenNumber)
numbers = getFilteredArray(from: numbers, closure: isDivisibleByThree)

/*:
 1.4 Снова наполните массив числами от 1 до 100 и отфильтруйте его, используя блок замыкания универсальной функции.
 */

numbers = getAscendingArray(from: 1, to: 100)


getFilteredArray(from: numbers) { number in
    number % 2 == 0
}


/*:
 1.5 Снова наполните массив числами от 1 до 100 и отфильтруйте его, используя для этого функцию высшего порядка `filter`
 */
numbers = getAscendingArray(from: 1, to: 100)

numbers = numbers.filter { !isEvenNumber($0) }

numbers = getAscendingArray(from: 1, to: 100)

// Удаление всех элементов, удовлетворяющих условию
numbers.removeAll(where: isEvenNumber)
numbers.removeAll(where: isDivisibleByThree)
