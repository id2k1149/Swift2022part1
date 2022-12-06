import UIKit

//: # Lesson 7
//: ## Классы

let postTitle = "Classes"
let postBody = "Text of the article"
let postAutor = "Eugeniya Bruyko"

let postTitle1 = "Properties of classes"
let postBody2 = "Text of the article"
let postAutor2 = postAutor



//: ### Методы классов

class Post {
    var title = ""
    var body = ""
    var author = ""
    var numberOfComments: Int {
        comments.count
    }
    private var comments: [String] = []
    
    func addComment(_ comment: String) {
        comments.append(comment)
    }
    
    func showAllComments() {
        for comment in comments {
            print(comment)
        }
    }
}

let firstPost = Post()


firstPost.title = "This is my first post"
firstPost.body = "Hello"
firstPost.author = "Efimov Alexey"
firstPost.addComment("Thank you so much")
firstPost.addComment("New comment")

firstPost.showAllComments()
firstPost.numberOfComments


print("The number of comments to the post \(firstPost.title) is \(firstPost.numberOfComments)")


let secondPost = Post()

secondPost.title = "Second post"
secondPost.body = "A lot of text"
secondPost.author

//print("The number of comments to the post \(secondPost.title) is \(secondPost.numberOfComments)")

//print("Author \(firstPost.author) has published new post '\(firstPost.title)' with text '\(firstPost.body)'")
//print("Author \(secondPost.author) has published new post '\(secondPost.title)' with text '\(secondPost.body)'")

firstPost === secondPost
//: ### Инициализация

class Human {
    var name: String
    var age: Int
    
    // static method
    init(name: String = "", age: Int = 0) {
        self.name = name
        self.age = age
    }
    
    // public method
    func doSmth() {
        print("Human \(name) plays football")
    }
    
    // static method
    static func eat() {
        print("Human eats")
    }
    
    // private method
    private func sleeps() {
        print("Human \(name) sleeps")
    }
    
    func canSleep() {
        sleeps()
    }
}

let person = Human(name: "Tim", age: 54)
let personOne = Human()

person.name
person.age
person.doSmth()
Human.eat()
person.canSleep()

personOne.name
