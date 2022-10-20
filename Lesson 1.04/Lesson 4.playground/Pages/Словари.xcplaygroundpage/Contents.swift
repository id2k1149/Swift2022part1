//: [Previous](@previous)

import Foundation

//: ## Словари
//: > Неупорядоченные коллекции, которые хранят в себе пары «ключ-значение». Тип ключа словаря может отличаться от типа значения. При этом сами ключи и значения должны быть одного типа

var someStringDictionary = Dictionary<String, String>() //Полная форма записи словаря
var morStringDictionary: Dictionary<String, String> = [:]
var anotherSomeDictionary = [Int: String]() // Сокращенная форма записи словаря
var carWashQueue: [String: String] = [:]  // Рекомендованная форма записи

// Наполнение словаря данными

carWashQueue = ["E095BA": "Rad Toyota", "X127MT": "White BMW X6"]

// Изменение значения для ключа

carWashQueue["E095BA"] = "Red Camry"
carWashQueue

// Изменение значения с сохранением старого значения

let oldValue = carWashQueue.updateValue("Gray BMW X6", forKey: "X127MT")
carWashQueue


// Добавление новой пары ключ-значение
carWashQueue["M56PA"] = "Creen Chevralet Niva"

carWashQueue

// Удаление значения по ключу с сохранением значения

carWashQueue.removeValue(forKey: "E095BA")

carWashQueue

carWashQueue.count

carWashQueue.removeAll()
//: [Next](@next)

