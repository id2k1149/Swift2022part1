import UIKit
//: # Lesson 10
//: ## Кортежи

/*:
 
    (valueOne, ValueTwo, ValueThree,…)

*/

class Weather {
    var currentWeather: (Int, String)
    
    init(currentWeater: (Int, String)) {
        self.currentWeather = currentWeater
    }
}



//: ### Получение доступа к элементам

let weather = Weather(currentWeater: (22, "Sunny"))

weather.currentWeather

weather.currentWeather.0 = 24
weather.currentWeather.1 = "Rainy"

weather.currentWeather

let (temperature, _) = weather.currentWeather

temperature

//: ### Именование элементов кортежа

var currentWeather = (temp: 22, atmos: "Sunny", windSpeed: 6)

currentWeather.atmos
currentWeather.temp
currentWeather.windSpeed


//: ### Массовое присвоение значений

var numberOne = 1
var numberTwo = 2
var numberThree = 3

(numberTwo, numberOne, numberThree) = (2, 1, 3) // Не сипользовать!


var cityTemp = [
    "Moscow": Int.random(in: 15...35),
    "St.Petersburg": Int.random(in: 15...35),
    "Ufa": Int.random(in: 15...35)
]


for (city, temp) in cityTemp {
    print("Температура в городе \(city) составляет \(temp) градусов")
}

let cityList = cityTemp.sorted(by: <)

for cityTemp in cityList {
    print("\(cityTemp.key) - \(cityTemp.value)")
}


func getTemp(in city: String) -> (city: String, temp: Int) {
    let temp = Int.random(in: 15...30)
    return (city, temp)
}

let (city, temp) = getTemp(in: "Ufa")
print("Температура в городе \(city) составляет \(temp) градусов")


let tempInCity = getTemp(in: "Ufa")
print("Температура в городе \(tempInCity.city) составляет \(tempInCity.temp) градусов")

//: ## Опциональные типы

var someString = ""
var anotherSring: String
var optionalString: String?

optionalString = someString

var possibleNumber = "1234"
var convertedNumber = Int(possibleNumber)

//: ### Извлечение опционалов

convertedNumber = 16

if convertedNumber != nil {
    convertedNumber = nil
    print("convertedNumber has an integer value of \(convertedNumber)")
}

//: ### Принудительное извлечение опционалов

if convertedNumber != nil {
//    convertedNumber = nil
    print("convertedNumber has an integer value of \(convertedNumber!)")
}

if convertedNumber != nil {
//    convertedNumber = nil
    print("convertedNumber has an integer value of \(convertedNumber ?? 0)")
}
//: ### Привязка опционалов

if let converted = convertedNumber {
    print("convertedNumber has an integer value of \(converted)")
} else {
    print("convertedNumber does not contains some integer value")
}

//: ### Guard

var name = ""
var surname = ""
var email = ""
var age = 0

func createNewUserV1(name: String, surname: String, email: String, age: Int) {
    if !name.isEmpty {
        print(name)
    } else {
        print("Enter your name")
    }
    
    if !surname.isEmpty {
        print(surname)
    } else {
        print("Enter your surname")
    }
    
    if !email.isEmpty {
        print(email)
    } else {
        print("Enter your email")
    }
    
    if age >= 18 {
        print(age)
    } else {
        print("Entry for adults only")
    }
    
    print("\(name) \(surname), Welcome!")
}

//surname = "Cook"
//createNewUserV1(name: name, surname: surname, email: email, age: age)

func createNewUserV2(name: String, surname: String, email: String, age: Int) {
    if !name.isEmpty {
        print(name)
        if !surname.isEmpty {
            print(surname)
            if !email.isEmpty {
                print(email)
                if age >= 18 {
                    print("\(name) \(surname), Welcome!")
                } else {
                    print("Entry for adults only")
                }
            } else {
                print("Enter your email")
            }
        } else {
            print("Enter your surname")
        }
    } else {
        print("Enter your name")
    }
}



//createNewUserV2(name: name, surname: surname, email: email, age: age)

func createNewUserV3(name: String, surname: String, email: String, age: Int) {
    if name.isEmpty {
        print("Enter your name")
        return
    }
    
    print(name)
    
    if surname.isEmpty {
        print("Enter your surname")
        return
    }
    
    print(surname)
    
    if email.isEmpty {
        print("Enter your email")
        return
    }
    
    print(email)
    
    if age < 18 {
        print("Entry for adults only")
        return
    }
    
    print("\(name) \(surname), Welcome!")
}

//createNewUserV3(name: name, surname: surname, email: email, age: age)

func createNewUserV4(name: String?, surname: String?, email: String?, age: Int?) {
    if name == nil, name?.count == 0 {
        print("Enter your name")
        return
    }
    
    print(name ?? "")
    
    if surname == nil, surname?.count == 0  {
        print("Enter your surname")
        return
    }
    
    print(surname!)
    
    if email == nil, email?.count == 0  {
        print("Enter your email")
        return
    }
    
    print(email!)
    
    if age == nil, age! < 18  {
        print("Entry for adults only")
        return
    }
    
    print("\(name!) \(surname!), Welcome!")
}

//createNewUserV4(name: name, surname: surname, email: email, age: age)
//: ### Синтаксис


/*:

    guard condition else { return }

 */

name = "Tim"
surname = "Cook"
email = "timcook@apple.com"
age = 18

func createNewUserV5(name: String?, surname: String?, email: String?, age: Int?) {
    guard let name = name, !name.isEmpty else { return }
    guard let surname = surname, !surname.isEmpty else { return }
    guard let email = email, !email.isEmpty else { return }
    guard let age = age, age >= 18 else {
        print("Entry for adults only")
        return
    }
    
    print("\(name) \(surname), Welcome!")
}

createNewUserV5(name: name, surname: surname, email: email, age: age)


//: ### Неявно извлеченные опционалы

struct User {
    let name: String
    let surname: String
    let phone: String
    let email: String
}

class UserProfileViewModel {
    var userNameLabel = ""
    var userSurnameLabel = ""
    var userPhoneLabel = ""
    var userEmailLabel = ""
    
    var user: User!
    
    func setupUI() {
        userNameLabel = user.name
        userSurnameLabel = user.surname
        userEmailLabel = user.email
        userPhoneLabel = user.phone
    }
}

let user = User(name: "Tim",
                surname: "Cook",
                phone: "8888",
                email: "timcook@aplle.com")

let userProfile = UserProfileViewModel()
userProfile.user = user

userProfile.setupUI()
//: ## Опциональная последовательность

class Person {
    var id: String?
    var residence: Residence?
}

class Residence {
    var address: Address?
}

class Address {
    var buildingNumber: String?
    var streetName: String?
    var apartmentNumber: String?
}

let person: Person? = Person()

if let residence = person?.residence {
    if let adress = residence.address {
        if let apartmentNumber = adress.apartmentNumber {
            print("The apartmaen number: \(apartmentNumber)")
        }
    }
}

if let apartmentNumber = person?.residence?.address?.apartmentNumber {
    print("The apartmaen number: \(apartmentNumber)")
}
