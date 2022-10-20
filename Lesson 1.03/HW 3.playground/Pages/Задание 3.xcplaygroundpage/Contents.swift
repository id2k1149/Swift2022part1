import Foundation

/*:
 ## Задание 3*
 С помощью блоков `case` определяются возможные значения, которые может принять выражение. Однако Swift позволяет в пределах одного блока case указать не только на значение рассматриваемого параметра, но и на зависимость от какого-либо условия. Данный функционал реализуется с помощью ключевого слова `where` в блоке `case`.
 
 В этом задании вам необходимо отсортировать конфеты M&M's по цвету и по начинке. В первую кучку нужно собрать красные конфеты с шоколадом внутри. Во вторую кучку соберите все желтые конфеты с орехами. А в третью кучку коричневые с шоколадом и зеленые с шоколадом. Нужно реализовать только логику для сортировки конфет. Использовать кортежи при этом не нужно.
 
 */

let color = "green"
let taste = "chocolate"

switch color {
case "red" where taste == "chocolate":
    print("This candy goes to the first pile")
case "yellow" where taste == "hazelnut":
    print("This candy goes to the second pile")
case "brown" where taste == "chocolate",
    "green" where taste == "chocolate":
    print("This candy goes to the third pile")
default:
    print("I don't know where to put this candy")
}

//: [Ранее: Задание 2](@previous)  |  задание 3 из 3  |
