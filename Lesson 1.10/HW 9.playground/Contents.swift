import UIKit

//: # Home Work 9

/*:
 ## Задание 1
 1.1 Создайте перечисление `CalculationType`, содержащее четыре математических действия — *сложение*, *вычитание*, *умножение* и *деление*.
 */

enum CalculationType: String {
    case addition = "сложения"
    case subtraction = "вычитания"
    case multiplication = "умножения"
    case division = "деления"
}

//: 1.2 Напишите функцию возвращающую `Int` и принимающую в качестве параметров три значения: число один, число два и тип математической операции. Внутри функции, в зависимости от значения параметра `CalculationType` выполните соответствующую математическую операцию со значениями и верните результат. Реализуйте функцию таким образом, что бы при каждом её вызове на консоль выводилось сообщение следующего содержания: «Результат сложения (вычитания, деления, умножения) <…> и <…> равен <…>».

func getResult(_ calculationType: CalculationType, betweenNumber firstNumber: Int, andNumber secondNumber: Int) -> Int {
    
    var result = firstNumber
    
    switch calculationType {
    case .addition: result += secondNumber
    case .subtraction: result -= secondNumber
    case .multiplication: result *= secondNumber
    case .division:
        if secondNumber != 0 {
            result /= secondNumber
        } else {
            print("На ноль делать нельзя")
            return 0
        }
    }
    
    print("Результат \(calculationType.rawValue) \(firstNumber) и \(secondNumber) равен \(result)")
    
    return result
}

//: 1.3 Вызовите эту функцию четыре раза для каждого математического оператора в отдельности.

getResult(.addition, betweenNumber: 10, andNumber: 5)
getResult(.subtraction, betweenNumber: 10, andNumber: 5)
getResult(.division, betweenNumber: 10, andNumber: 0)
getResult(.multiplication, betweenNumber: 10, andNumber: 5)

/*:
 ## Задание 2
 2.1 Создайте перечисление `DistanceUnit` (Единица измерения расстояния) со следующими кейсами: `versta`, `kilometer`, `mile`.
 
 Внутри перечисления `DistanceUnit` создайте еще одно перечисление `NonISUCountry` в котором содержится перечень стран не принявших международную систему единиц (США, Либерия и Мьянма).
 
 Верста и километр должны иметь ассоциативный параметры следующего типа: `(title: String, denotation: String, countries: [String])`. Миля - `(title: String, denotation: String, countries: [NonISUCountry])`. Первый параметр - это название единицы измерения, второй параметр отвечает за обозначение единицы, а массив должен содержать перечень стран в которых используется эта единица (для километра не обязательно перечислять все страны).
 */

enum DistanceUnit {
    enum NonISUCountry: String {
        case usa = "США"
        case liberia = "Либерия"
        case myanmar = "Мьянма"
    }
    
    case versta(title: String, denotation: String, countries: [String])
    case kilometer(title: String, denotation: String, countries: [String])
    case mile(title: String, denotation: String, countries: [NonISUCountry])
}

/*:

 2.2 Создайте по экземпляру DistanceUnit для каждого кейса и функцию, которая должна принимать единицу измерения и выводить на консоль информацию о ней, например: "Километр. Краткое наименование: км. Страны: Россия, Евросоюз".
 */

let versta: DistanceUnit = .versta(
    title: "Верста",
    denotation: "верста",
    countries: ["Русь"]
)

let kilometer: DistanceUnit = .kilometer(
    title: "Километр",
    denotation: "км",
    countries: ["Россия, Евросоюз"]
)

let mile: DistanceUnit = .mile(
    title: "Миля",
    denotation: "миля",
    countries: [.usa, .liberia, .myanmar]
)

func getInfoAbout(_ distanceUnit: DistanceUnit) {
    
    switch distanceUnit {
    case let .versta(title, denotation, countries):
        print("\(title). Краткое наименование: \(denotation). Страны: \(countries.joined(separator: ", "))")
    case let .kilometer(title, denotation, countries):
        print("\(title). Краткое наименование: \(denotation). Страны: \(countries.joined(separator: ", "))")
    case let .mile(title, denotation, countries):
        let nonISUCountries = countries.map { $0.rawValue }
        print("\(title). Краткое наименование: \(denotation). Страны: \(nonISUCountries.joined(separator: ", "))")
    }
}

getInfoAbout(versta)
getInfoAbout(kilometer)
getInfoAbout(mile)
