import UIKit

//: # Home Work 9

/*:
 ## Задание 1
 1.1 Создайте перечисление `CalculationType`, содержащее четыре математических действия — *сложение*, *вычитание*, *умножение* и *деление*.
 */

enum CalculationType: String {
    case addition = "сложение"
    case substraction = "вычитание"
    case multiplication = "умножение"
    case division = "деление"
}

//: 1.2 Напишите функцию возвращающую `Int` и принимающую в качестве параметров три значения: число один, число два и тип математической операции. Внутри функции, в зависимости от значения параметра `CalculationType` выполните соответствующую математическую операцию со значениями и верните результат. Реализуйте функцию таким образом, что бы при каждом её вызове на консоль выводилось сообщение следующего содержания: «Результат сложения (вычитания, деления, умножения) <…> и <…> равен <…>».

func calculate(_ numberOne: Int, and numberTwo: Int, using: CalculationType) -> Int{
    let result: Int
    
    switch using {
    case .addition:
        result = numberOne + numberTwo
    case .substraction:
        result = numberOne - numberTwo
    case .multiplication:
        result = numberOne * numberTwo
    case .division:
        result = numberOne / numberTwo
    }
    
    print("Результат \(using.rawValue.dropLast())я \(numberOne) и \(numberTwo) равен \(result)")
    return result
}

//: 1.3 Вызовите эту функцию четыре раза для каждого математического оператора в отдельности.

calculate(6, and: 3, using: .addition)
calculate(6, and: 3, using: .substraction)
calculate(6, and: 3, using: .multiplication)
calculate(6, and: 3, using: .division)


/*:
 ## Задание 2
 2.1 Создайте перечисление `DistanceUnit` (Единица измерения расстояния) со следующими кейсами: `versta`, `kilometer`, `mile`.
 
 Внутри перечисления `DistanceUnit` создайте еще одно перечисление `NonISUCountry` в котором содержится перечень стран не принявших международную систему единиц (США, Либерия и Мьянма).
 
 "Верста" и километр должны иметь ассоциативный параметры следующего типа: `(title: String, denotation: String, countries: [String])`. Миля - `(title: String, denotation: String, countries: [NonISUCountry])`. Первый параметр - это название единицы измерения, второй параметр отвечает за обозначение единицы, а массив должен содержать перечень стран в которых используется эта единица (для километра не обязательно перечислять все страны).
 */

enum DistanceUnit {
    case versta(title: String, denotation: String, countries: [String])
    case kilometer(title: String, denotation: String, countries: [String])
    case mile(title: String, denotation: String, countries: [NonISUCountry])
    
    enum NonISUCountry: String {
        case usa = "США"
        case liberia = "Либерия"
        case myanmar = "Мьянма"
    }
}

/*:

 2.2 Создайте по экземпляру DistanceUnit для каждого кейса и функцию, которая должна принимать единицу измерения и выводить на консоль информацию о ней, например: "Километр. Краткое наименование: км. Страны: Россия, Евросоюз".
 */

let versta = DistanceUnit.versta(title: "Верста", denotation: "n/a", countries: ["Россия"])
let kilometer = DistanceUnit.kilometer(title: "Километр", denotation: "км", countries: ["Россия", "Евросоюз"])
let mile = DistanceUnit.mile(title: "Миля", denotation: "mi", countries: [.usa, .liberia, .myanmar])

func printDistanceUnitInfo(for distanceUnit: DistanceUnit) {
    
    switch distanceUnit {
        
    case let .versta(title, denotation, countries):
        // https://stackoverflow.com/questions/58761304/swift-remove-array-brackets-and-double-quotes
        print("\(title). Краткое наименование: \(denotation). Страны: \(countries.joined(separator: ", "))")
        
    case let .kilometer(title, denotation, countries):
        print("\(title). Краткое наименование: \(denotation). Страны: \(countries.joined(separator: ", "))")
        
    case let .mile(title, denotation, countries):
        var countriesArray: [String] = []
        
        for country in countries {
            countriesArray.append(country.rawValue)
        }
        
        print("\(title). Краткое наименование: \(denotation). Страны: \(countriesArray.joined(separator: ", "))")
    }
}

printDistanceUnitInfo(for: versta)
printDistanceUnitInfo(for: kilometer)
printDistanceUnitInfo(for: mile)
