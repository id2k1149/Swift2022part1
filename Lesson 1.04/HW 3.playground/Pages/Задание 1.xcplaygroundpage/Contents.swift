import UIKit

//: # Home work 3

/*:
 ## Задание 1
 Представьте, что вы владелец розничного магазина и вам необходимо установить стоимость товара в зависимости от его количества. До 9 единиц товара включительно цена составляет 1000 рублей за штуку. От 10 до 19 единиц товара включительно - 800 руб. шт. И 600 рублей за товар от 20 единиц и выше. Создайте условие при котором цене будет присвоено соответсвующее значение, используя конструкцию `if-else`. Подсчитайте общую сумму и выведите результат на консоль.
 */

var quantity = 44
var price: Int
var totalSum: Int

if quantity < 0 {
    price = 0
} else if quantity < 10 {
    price = 1000
} else if quantity < 20 {
    price = 800
} else {
    price = 600
}

totalSum = quantity * price
print("Количество: \(quantity) шт, цена: \(price) рублей, общая сумма: \(quantity * price) рублей")


quantity = 9

if quantity < 0 {
    price = 0
} else if 1...9 ~= quantity {
    price = 1000
} else if 10...19 ~= quantity {
    price = 800
} else {
    price = 600
}
totalSum = quantity * price
print("Количество: \(quantity) шт, цена: \(price) рублей, общая сумма: \(totalSum) рублей")

if quantity < 0 {
    price = 0
} else if (1...9).contains(quantity) {
    price = 1000
} else if (10...19).contains(quantity) {
    price = 800
} else {
    price = 600
}

totalSum = quantity * price
print("Количество: \(quantity) шт, цена: \(price) рублей, общая сумма: \(totalSum) рублей")

//: |  задание 1 из 3  |  [Далее: Задание 2](@next)
