import UIKit

//: # Lesson 8
//: ### Наследование


class Human {
    let name: String
    var age = 0
    
    init(name: String) {
        self.name = name
    }
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func walk() {
        print("I can walk")
    }
    
    func sleep() {
        print("I need sleep")
    }
    
    func eat() {
        print("I need food")
    }
}


class Child: Human {
    
    func nursing() {
        if age <= 5 {
            print("I need care")
        } else {
            print("I can eat independently")
        }
    }
    
    func parenting() {
        if age >= 5 && age <= 13 {
            print("I need an education")
        } else if age < 5 {
            print("Me too early to educate")
        } else {
            print("Me too late to educate")
        }
    }
}


let littleBoy = Child(name: "Ron", age: 4)
littleBoy.eat()
littleBoy.sleep()
littleBoy.nursing()
littleBoy.parenting()



class SchoolChild: Child {
    func schooling() {
        if age >= 6 && age <= 17 {
            print("I have to go to school")
        } else {
            print("I'm still too early in school")
        }
    }
}


var someChild = SchoolChild(name: "Sara", age: 5)

someChild.nursing()
someChild.parenting()
someChild.schooling()

someChild.age = 7

someChild.sleep()
//: ### Полиморфизм

class Shape {
    func draw() {
        print("Draw some shape")
    }
}

class Ellipse: Shape {
    override func draw() {
        super.draw()
        print("Draw Ellipse")
    }
}

class Triangle: Shape {
    override func draw() {
        print("Draw Triangle")
    }
}

class Circle: Shape {
    override func draw() {
        print("Draw Circle")
    }
}

func draw(ellipse: Ellipse) {
    ellipse.draw()
}

func draw(triangle: Triangle) {
    triangle.draw()
}

func draw(circle: Circle) {
    circle.draw()
}

func drowShape(_ shape: Shape) {
    shape.draw()
}



let ellipse = Ellipse()
let triangle = Triangle()
let circle = Circle()

drowShape(ellipse)
drowShape(triangle)
drowShape(circle)

draw(ellipse: ellipse)
draw(triangle: triangle)
draw(circle: circle)

//: ## Структуры

let playerOne = "Player One"
var player1XPosition = 10
var player1YPosition = 5

let playerTwo = "Player Two"
var player2XPosition = 8
var player2YPosition = 3


struct PositionOnMap {
    let player: String
    var x: Int
    var y: Int
    
    func playersPosition() {
        print("The position of \(player): X\(x):Y\(y)")
    }
}


var playerOnePosition = PositionOnMap(player: "PlayerOne", x: 10, y: 8)
var playerTwoPosition = PositionOnMap(player: "PlayerTwo", x: 3, y: 7)

playerOnePosition.player
playerOnePosition.x
playerOnePosition.y

playerOnePosition.x = 7

playerOnePosition.playersPosition()

//: ### Сравнение классов и структур


class MacBook {
    var name: String
    var year: Int
    var color: String
    
    init(name: String, year: Int, color: String) {
        self.name = name
        self.year = year
        self.color = color
    }
    
    func printDescription() {
        print("\(name) \(year) \(color)")
    }
}

let macBookPro = MacBook(name: "MacBook Pro", year: 2020, color: "Space Gray")


let macBookAir = macBookPro

macBookAir.name = "MacBook Air"

macBookPro.printDescription()
macBookAir.printDescription()


struct IPhone {
    var name: String
    var color: String
    var capacity: Int
    
    func printDescription() {
        print("\(name) \(color) \(capacity)Gb")
    }
}

let iPhoneXR = IPhone(name: "iPhone", color: "Colral", capacity: 128)

var iPhone13 = iPhoneXR

iPhone13.name = "iPhone13"

iPhoneXR.printDescription()
iPhone13.printDescription()


var someNumber = 12
var anyNumber = someNumber

someNumber = 0
anyNumber
//: ### Методы в структурах


struct Rectangle {
    var width: Int
    var height: Int
    
    var area: Int {
        width * height
    }
    
    mutating func scale(width: Int, height: Int) {
        self.width *= width
        self.height *= height
    }
}


var myRectangle = Rectangle(width: 10, height: 5)
myRectangle.area

myRectangle.scale(width: 2, height: 3)
myRectangle.area


