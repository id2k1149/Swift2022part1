//: [Previous](@previous)
//: ### Функции как замыкания

//: Отбираем числа меньше заданного значения
var numbers = [5, 8, 20, 13, 1, 4, 3, 6]


func filterLessThanValue(value: Int, numbers: [Int]) -> [Int] {
    
    var filteredNumbers: [Int] = []
    
    for number in numbers {
        if number < value {
            filteredNumbers.append(number)
        }
    }
    return filteredNumbers
}

let filterArray = filterLessThanValue

//: Отбираем числа больше заданного значения
func filterGreaterThanValue(value: Int, numbers: [Int]) -> [Int] {

    var filteredNumbers: [Int] = []

    for number in numbers {
        if number > value {
            filteredNumbers.append(number)
        }
    }
    return filteredNumbers
}

//: Функция для отбора чисел, относительно заданного значения
numbers = [5, 8, 20, 13, 1, 4, 3, 6]

func filterWithPredicateClosure(value: Int, numbers: [Int], closure: (Int, Int) -> Bool) -> [Int] {
    var filterNumbers = [Int]()

    for number in numbers {
        if closure(number, value) {
            filterNumbers.append(number)
        }
    }
    return filterNumbers
}

//: Функция для отбора числе меньше указанного значения
func lessThanValue(number: Int, value: Int) -> Bool {
    number < value
}

let result = lessThanValue(number: 5, value: 6) // вызов
let closure = lessThanValue // Передача функции в новое свойство

closure(6, 8)

//: Функция для отбора числе больше указанного значения
func greaterThanValue(number: Int, value: Int) -> Bool {
    number > value
}

//: Отбор чисел меньше указанного значения
filterWithPredicateClosure(value: 5,
                           numbers: numbers,
                           closure: lessThanValue)

//: Отбор чисел больше указанного значения
filterWithPredicateClosure(value: 5,
                           numbers: numbers,
                           closure: greaterThanValue)

//: ### Замыкающие выражения

/*:
 
 Замыкания бывают трех видов:
 
 - Глобальные функции — это замыканиями, у которых есть имя и которые не захватывают никакие значения.
 
 - Вложенные функции — это замыканиями, у которых тоже есть имя, но при этом они могут использовать или захватывать значения из родительской функции.
 
 - Замыкающие выражения - это безымянные функции, написанные в облегченном синтаксисе, которые могут захватывать значения из окружающего контекста
 
 */


/*:
    { (параметры) -> тип результата in
        тело замыкающего выражения
    }
 */



//: Использование замыкания в качестве аргумента
//: Отбор чисел меньше указанного значения
filterWithPredicateClosure(
    value: 5,
    numbers: numbers,
    closure: { (number: Int, value: Int) -> Bool in
    return number < value
})

//: Отбор чисел больше указанного значения
filterWithPredicateClosure(
    value: 5,
    numbers: numbers,
    closure: { (number: Int, value: Int) -> Bool in
    return number > value
})

//: Вывод типа из контекста
filterWithPredicateClosure(
    value: 5,
    numbers: numbers,
    closure: { (number, value) in
    return number < value
})

filterWithPredicateClosure(
    value: 5,
    numbers: numbers,
    closure: { (number, value) in
    return number > value
})

//: Неявные возвращаемые значения из замыканий с одним выражением
filterWithPredicateClosure(
    value: 5,
    numbers: numbers,
    closure: { (number, value) in number < value })

filterWithPredicateClosure(
    value: 5,
    numbers: numbers,
    closure: { (number, value) in number > value })

//: Сокращенные имена параметров
filterWithPredicateClosure(
    value: 5,
    numbers: numbers,
    closure: { $0 < $1 })


filterWithPredicateClosure(
    value: 5,
    numbers: numbers,
    closure: { $0 > $1 })

//: Последующее замыкание
filterWithPredicateClosure(value: 5, numbers: numbers) { $0 < $1 }
filterWithPredicateClosure(value: 5, numbers: numbers) { $0 < $1 }

//: Операторные функции
filterWithPredicateClosure(
    value: 5,
    numbers: numbers,
    closure: <)

filterWithPredicateClosure(
    value: 5,
    numbers: numbers,
    closure: >)

//: [Next](@next)
