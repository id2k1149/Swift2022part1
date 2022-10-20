import UIKit

//: # Lesson 9
//: ## Перечисления

var someDay = "Monday"

func setupAlarm(for day: String) {
    if day == "Monday" || day == "Tuesday" {
        print("Today is \(day). The alarm is set at 8 am")
    } else {
        print("Today is \(day). Alarm not set")
    }
}

setupAlarm(for: someDay)

someDay = "tuesday"

setupAlarm(for: someDay)

/*:
    enum EnumerationName {
        case enumeration
    }
 
 */


enum Weekday {
    case monday
    case tuesday
    case wednsday
    case thursday
    case friday
    case saturday
    case sunday
}

var weekday = Weekday.thursday

weekday = .monday


//: ### Использование инструкции Switch

func setupAlarm(for weekday: Weekday) {
    switch weekday {
    case .monday:
        print("Set alarm for 8 am ")
    case .tuesday:
        print("Set alarm for 8:30 am")
    case .wednsday:
        print("Set alarm for 7 am ")
    case .thursday:
        print("Set alarm for 7:30 am ")
    case .friday:
        print("Yay! TGIF!")
    default:
        print("Weekend. Alarm not set")
    }
}

//: ### Исходные значения



enum Countries: String {
    case usa = "USA"
    case russia = "Russia"
    case china
}

var country = Countries.usa

print("case name: \(country)")
print("case name: \(country.rawValue)")

country = .china

print("case name: \(country)")
print("case name: \(country.rawValue)")




enum Planet: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}

let earth = Planet.earth
print("Earth is the \(earth.rawValue) planet from the sun")
//: ### Инициализация

let possiblePlanet = Planet(rawValue: 7)

//: ### Связанные значения (ассоциированные параметры)


enum WeekdayV2 {
    case workday(message: String, time: Int)
    case weekend(message: String)
}

var anyDay = WeekdayV2.workday(message: "Set alarm to", time: 8)

let anyTwoDay = WeekdayV2.weekend(message: "Alarm not set")


//func setAlarm(for weekday: WeekdayV2) {
//    switch weekday {
//    case .workday(message: let message, time: let time):
//        print("\(message) \(time)")
//    case .weekend(message: let message):
//        print(message)
//    }
//}

func setAlarm(for weekday: WeekdayV2) {
    switch weekday {
    case let .workday(message, time):
        print("\(message) \(time)")
    case let .weekend(message):
        print(message)
    }
}

setAlarm(for: anyTwoDay)
