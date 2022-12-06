import UIKit

//: # Home work 3

/*:
 ## Задание 1
 Представьте, что вы владелец розничного магазина и вам необходимо установить стоимость товара в зависимости от его количества. До 9 единиц товара включительно цена составляет 1000 рублей за штуку. От 10 до 19 единиц товара включительно - 800 руб. шт. И 600 рублей за товар от 20 единиц и выше. Создайте условие при котором цене будет присвоено соответсвующее значение, используя конструкцию `if-else`. Подсчитайте общую сумму и выведите результат на консоль.
 */

let price: Int
let quantity = 10

if quantity <= 0 {
    print("We can't give you a price, please take some quantity.\n")
} else {
    if quantity <= 9 {
        price = 1000
    } else if quantity <= 19 {
        price = 800
    } else {
        price = 600
    }
    print("You take \(quantity) items, the price will be \(price) RUB per each. Total sum is \(price * quantity) RUB.\n")
}

//: |  задание 1 из 3  |  [Далее: Задание 2](@next)
