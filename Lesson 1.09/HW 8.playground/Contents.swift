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

class Rectangle: Shape {
    let width: Double
    let height: Double
    
    override var square: Double {
        height * width
    }
    
    override var perimeter: Double {
        (height + width) * 2
    }
    
    init(height: Double, width: Double) {
        self.height = height
        self.width = width
    }
}

class Circle: Shape {
    let radius: Double
    
    override var square: Double {
        Double.pi * radius * radius
    }
    
    override var perimeter: Double {
        2 * Double.pi * radius
    }
    
    init(radius: Double) {
        self.radius = radius
    }
}

/*:
 1.3. Создайте класс `Ellipse`, унаследовав его от `Rectangle`. Переопределите свойства `square` и `perimeter` в соответствии с правилом расчета площади и периметра эллипса (для расчета нужно использовать ширину и высоту).
 */

class Ellipse: Rectangle {
    
    override var square: Double {
        Double.pi * height * width
    }
    
    override var perimeter: Double {
        Double.pi * (height + width)
    }
}

//: 1.4 Создайте по экземпляру каждого класса, кроме `Shape` и выведите значение свойства `description` на консоль.

let rectangle = Rectangle(height: 6, width: 9)
let circle = Circle(radius: 5)
let ellipse = Ellipse(height: 10, width: 5)

print(rectangle.description)
print(circle.description)
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
        "\(model), \(power) л.с."
    }
    
    mutating func increase(power: Int) {
        self.power += power
    }
}

/*:
 2.2 Создайте экземпляр структуры и инициализируйте её свойства. Выведите значение свойства `description` на консоль, а затем вызовите метод `increasePower`. Снова выведите значение свойства `description` на консоль.
*/

var car = Car(model: "Super Car", power: 1000)
car.description

car.increase(power: 300)
car.description
