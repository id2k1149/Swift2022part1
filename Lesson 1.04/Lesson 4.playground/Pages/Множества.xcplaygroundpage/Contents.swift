//: [Previous](@previous)

import Foundation


//: ## Множества
//: > Хранят в себе неупорядоченные, но при этом уникальные значения одного типа

// Создание пустого множества с типом Character
var characters: Set<Character> = []

// Создание пустого множества с типом Int

var integers = Set<Int>()

// Создание множества с типом String

var strings: Set = ["a", "a", "a", "b", "c"]
strings

// Добавление нового элемента в множество

strings.insert("d")
strings.insert("a")

// Проверка на наличие определенного элемента во множестве

strings.contains("a")

// Сортировка с использованием метода sorted() для последующей итерации по множеству

strings

strings.sorted()

strings.sorted(by: >)

//: [Next](@next)
