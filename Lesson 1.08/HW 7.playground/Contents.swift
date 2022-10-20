import UIKit

//: # Home Work 7

/*:
 ## Задание 1
 1.1 Создайте класс `Orange` со следующими свойствами:
 
 - `color: String`
 
 - `taste: String`
 
 - `radius: Double`
 
 Необходимо реализовать возможность создания экземпляра класса со значениями по умолчанию для свойств *color* и *taste*. Свойство *radius* должно быть обязательным для инициализации, т.е. не должно быть возможности создания экземпляра класса без радиуса.
 
 Объявите геттер *orangeVolume*, возвращающий объем апельсина. При этом расчет объема необходимо реализовать в методе *calculateOrangeVolume* (число Пи в Swift можно получить через константу `Double.pi`. Формулу расчета можно погуглить).
 
 Создайте экземпляр класса `Orange`, вызвав при этом инициализатор только для радиуса. Остальным свойствам, созданного экземпляра присвойте следующие значения:
 
 - `color` — *Orange*

 - `taste` — *Sweet*
 
 Выведите на консоль сообщение: «Orange has <...> color and <...> taste. The volume of orange is <...>», обращаясь к этим значениям через экземпляр класса.
 */

class Orange {
    
    var color: String
    var taste: String
    let radius: Double
    
    var orangeVolume: Double {
        calculateOrangeVolume()
    }
    
    init(color: String = "", taste: String = "", radius: Double) {
        self.color = color
        self.taste = taste
        self.radius = radius
    }
    
    private func calculateOrangeVolume() -> Double {
        4 / 3 * Double.pi * pow(radius, 3)
    }
}

let orange = Orange(radius: 95)

orange.color = "Orange"
orange.taste = "Sweet"

print("Orange has \(orange.color) color and \(orange.taste) taste. The volume of orange is \(orange.orangeVolume)")
 
/*:
 ## Задание 2
 2.1 Создайте класс `Employee` (сотрудник) со следующими свойствами:
 
 - `salary`
 
 - `name`
 
 - `surname`
 */

class Employee {
    
    let name: String
    let surname: String
    let salary: Int
        
    init(name: String, surname: String, salary: Int) {
        self.name = name
        self.surname = surname
        self.salary = salary
    }
}
 
//: 2.2 Создайте массив `names` со следующими именами: *John*, *Aaron*, *Tim*, *Ted*, *Steven*. И еще один массив `surnames` со следующими фамилиями: *Smith*, *Dow*, *Isaacson*, *Pennyworth*, *Jankins*. Массивы должны быть созданы вне класса.

let names = ["John", "Aaron", "Tim", "Ted", "Steven"]
let surnames = ["Smith", "Dow", "Isaacson", "Pennyworth", "Jankins"]

//: 2.3 Объявите массив `employees` и создайте цикл, в котором он заполняется десятью объектами класса `Employee` таким образом, что свойства `name` и `surname` инициализируются случайными именами и фамилиями из массивов `names` и `surnames`, соответственно. Свойство `salary` (зарплата) тоже должно генерироваться в случайном диапазоне от *$1000* до *$2000*

var employees: [Employee] = []

for _ in 1...10 {
    
    let employee = Employee(
        name: names.randomElement() ?? "",
        surname: surnames.randomElement() ?? "",
        salary: Int.random(in: 1000...2000)
    )
    
    employees.append(employee)
}

print(employees)

for employee in employees {
    print("\(employee.name) \(employee.surname)’s salary is $\(employee.salary)")
}


for _ in 1...10 {
        
    let employee = Employee(
        name: names[Int.random(in: 0..<names.count)],
        surname: surnames[Int.random(in: 0..<surnames.count)],
        salary: Int.random(in: 1000...2000)
    )
    
    employees.append(employee)
}

//: 2.4 Переберите массив `employees` и выведите информацию по каждому сотруднику в виде: «<имя> <фамилия>’s salary is $<... >»

for employee in employees {
    print("\(employee.name) \(employee.surname)’s salary is $\(employee.salary)")
}


//: 2.5 Создайте еще один массив на основе `employees`, который включает только тех работников, чья зарплата чётная. Выведите информацию по каждому сотруднику с четной зарплатой, как в пункте 2.4

var employeesWithEvenSalary: [Employee] = []

for employee in employees {
    if employee.salary.isMultiple(of: 2) {
        employeesWithEvenSalary.append(employee)
    }
}

print("\n Сотрудники с четной зарплатой \n")

for employee in employeesWithEvenSalary {
    print("\(employee.name) \(employee.surname)’s salary is $\(employee.salary)")
}

print("\n Сотрудники с четной зарплатой \n")

employeesWithEvenSalary = employees.filter { $0.salary.isMultiple(of: 2) }

for employee in employeesWithEvenSalary {
    print("\(employee.name) \(employee.surname)’s salary is $\(employee.salary)")
} 
