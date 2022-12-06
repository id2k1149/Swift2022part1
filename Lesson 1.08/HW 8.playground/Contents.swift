import UIKit

//: # Home Work 8
 
/*:
 ## Задание 1
 1.1 Создайте базовый класс `Shape` со следующими вычисляемыми свойствами:
 
 - `square: Double`
 
 - `perimeter: Double`
 
 - `description: String`
 
 Свойство `description` должно возвращать сообщение следующего вида: «Square of shape <...> is <...>. Perimeter - <...>»
 */

class Shape {
    var square: Double {
        0
    }
    
    var perimeter: Double {
        0
    }
    
    var description: String {
        "Square of shape \(type(of: self)) is \(square). Perimeter - \(perimeter)"
    }
}

/*:
 1.2. Создайте классы `Circle` и `Rectangle`, унаследовав их от `Shape`. Переопределите свойства `square` и `perimeter` для каждого класса в соответствии с правилом расчета площади и периметра (длины) конкретной фигуры.
 */

class Circle: Shape {
    let radius: Double
    
    override var square: Double {
        round(Double.pi * pow(radius, 2) * 100) / 100
    }
    
    override var perimeter: Double {
        round(2 * Double.pi * radius * 100) / 100
    }
    
    init(radius: Double) {
        self.radius = radius
    }
}

class Rectangle: Shape {
    let width: Double
    let height: Double
    
    override var square: Double {
        round(width * height * 100) / 100
    }
    
    override var perimeter: Double {
        round(2 * (width + height) * 100) / 100
    }
    
    init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }
}

/*:
 1.3. Создайте класс `Ellipse`, унаследовав его от `Rectangle`. Переопределите свойства `square` и `perimeter` в соответствии с правилом расчета площади и периметра эллипса (для расчета нужно использовать ширину и высоту).
 */

class Ellipse: Rectangle {
    
    override var square: Double {
        round(Double.pi * (width / 2) * (height / 2) * 100) / 100
    }
    
    override var perimeter: Double {
        round(4 * (Double.pi * width * height + pow(width - height, 2)) / (width + height) * 100) / 100
    }
}

//: 1.4 Создайте по экземпляру каждого класса, кроме `Shape` и выведите значение свойства `description` на консоль.

let circle = Circle(radius: 1)
print(circle.description)

let rectangle = Rectangle(width: 2, height: 1)
print(rectangle.description)

let ellipse = Ellipse(width: 2, height: 1)
print(ellipse.description)

/*:
 ## Задание 2
 2.1 Создайте структуру `Car` со следующими свойствами:
 - `model: String`
 - `power: Int`
 - `description: String`
 
 Свойство `description` должно возвращать сообщение с названием автомобиля и его мощность в лошадиных силах.
 
 Так же необходимо реализовать метод `increasePower`, который должен увеличить мощность автомобиля на заданное количество лошадиных сил.
  */

struct Car {
    let model: String
    var power: Int
    
    var description: String {
        "Model: \(model), power: \(power)HP"
    }
    
    mutating func increasePower(for power: Int) {
        self.power += power
    }
}

/*:
 2.2 Создайте экземпляр структуры и инициализируйте её свойства. Выведите значение свойства `description` на консоль, а затем вызовите метод `increasePower`. Снова выведите значение свойства `description` на консоль.
*/

var car = Car(model: "Ford", power: 100)
print(car.description)

car.increasePower(for: 20)
print(car.description)

