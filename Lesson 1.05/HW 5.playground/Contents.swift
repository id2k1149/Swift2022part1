import UIKit

//: # Home Work 5
/*:
 ## Задание 1
 Создайте словарь, который содержит результаты игр спортивной команды. Ключом словаря должно быть название команды соперника, а в качестве значения должен быть массив с результатами игр с этим соперником. Необходимо вывести на консоль результаты игр. Выглядеть это должно примерно следующим образом:
 
 - Игра с Салават Юлаев - 3:6
 
 - Игра с Салават Юлаев - 5:5
 
 - Игра с Салават Юлаев - N/A
 
 - Игра с Авангард - 2:1
  
 - Игра с АкБарс - 3:3
 
 - Игра с АкБарс - 1:2
 */

let gameResults = [
    "Салават Юлаев": ["3:6", "5:5", "N/A"],
    "Авангард": ["2:1"],
    "АкБарс": ["3:3", "1:2"]
]

for (teamName, results) in gameResults {

    for result in results {
        print("- Игра с \(teamName) - \(result)")
    }
    
}



/*:
 ## Задание 2
 Создайте функцию, которая считает общую сумму переданных в нее целочисленных значений и возвращает итоговый результат. Числа можно передавать либо в массиве, либо по отдельности, на ваше усмотрение. Вызовите функцию.
 */

func calculateTotalSumOf(_ numbers: Int...) -> Int {
    var totalSum = 0
    
    for number in numbers {
        totalSum += number
    }
    
    return totalSum
}

print("Total sum:", calculateTotalSumOf(1, 2, 3, 4, 5))

/*:
 ## Задание 3
 3.1 Создайте функцию, которая определяет является ли число четным. В случае, если число является четным, функция должна возвращать `true`. Иначе - `false`.
 */

func isEven(_ number: Int) -> Bool {
    number % 2 == 0
}

let randomNumber = Int.random(in: 1...10)
print("Number \(randomNumber) is even:", isEven(randomNumber))

/*:
3.2 Создайте функцию, которая определяет делится ли число на *3* без остатка. Функция так же должна возвращать булево значение.
*/

func isMultipleOfThree(_ number: Int) -> Bool {
    number % 3 == 0
}

print("Number \(randomNumber) is multiple of 3:", isMultipleOfThree(randomNumber))

/*:
 3.3 Создайте функцию, которая возвращает возрастающий массив чисел в интервале от *x* до *y*. Данный интервал должен задаваться при вызове функции при помощи параметров. Вы должны самостоятельно реализовать логику создания массива. Если хотите усложнить задание, то можете возвращать не сортированный массив чисел в заданном интервале. Главное, что бы числа были уникальными и не повторялись. При этом количество элементов массива должно соответствовать количеству элементов заданного интервала.
 */

func makeSortedArray(from x: Int, to y: Int) -> [Int] {
    var array: [Int] = []
    
    for number in x...y {
        array.append(number)
    }

    return array
}

// shuffled
func makeShuffledArray(from x: Int, to y: Int) -> [Int] {
    var array: [Int] = []
    
    for number in x...y {
        array.append(number)
    }

    return array.shuffled()
}

func makeUnsortedArray(from x: Int, to y: Int) -> [Int] {
    var array: [Int] = []
    let arrayCount = y - x + 1
    
    while array.count < arrayCount {
        let randomNumber = Int.random(in: x...y)
        
        if !array.contains(randomNumber) {
            array.append(randomNumber)
        } else {
            continue
        }
    }

    return array
}

/*:
3.4 Создайте массив чисел от *1* до *100*, используя для этого выше созданную функцию
 */

var numbers = makeUnsortedArray(from: 1, to: 100)

/*:
 3.5 Создайте функцию для фильтрации переданного в неё массива. Функция должна возвращать новый массив без четных чисел. Для определения фильтруемых значений используйте ранее созданную функцию из задания **3.1**.
 */

func removeEvenNumbers(fromArray numbers: [Int]) -> [Int] {
    var onlyOddNumbers: [Int] = []
    
    for number in numbers {
        
        if !isEven(number) {
            onlyOddNumbers.append(number)
        }
        
    }
    
    return onlyOddNumbers
}

/*:
 3.6 Создайте функцию для фильтрации переданного в неё массива. Функция должна возвращать новый массив без чисел кратных трем. Для определения фильтруемых значений используйте ранее созданную функцию из задания **3.2**.
 */

func removeMultipleOfThreeNumbers(fromArray numbers: [Int]) -> [Int] {
    var onlyNotMultipleOfThree: [Int] = []
    
    for number in numbers {
        
        if !isMultipleOfThree(number) {
            onlyNotMultipleOfThree.append(number)
        }
        
    }
    
    return onlyNotMultipleOfThree
}

/*:
 3.7 Отфильтруйте массив из задания **3.4** при помощи двух последний функций.
 */

numbers = removeEvenNumbers(fromArray: numbers)
numbers = removeMultipleOfThreeNumbers(fromArray: numbers)
