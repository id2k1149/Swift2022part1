
import Foundation

/*:
 ## Задание 2*
 После выполнения кода, расположенного в блоке `case`, происходит завершение работы конструкции `switch-case`. Однако иногда бывают такие случаи, когда после выполнения кейса необходимо выполнить переход к следующему `case`. Для этого в конце блока `case` указывается ключевое слово `fallthrough`.
 
 Создайте три уровня готовности к чрезвычайным ситуациям: **A**, **B** и **C**. Каждая степень должна предусматривать ряд мероприятий, причем каждый последующий уровень должен включать в себя мероприятия предыдущих уровней. В зависимости от переданного уровня необходимо вывести на консоль все предназначенные мероприятия. При этом минимальный уровень готовности — это **C**, максимальный — **A** (включает в себя мероприятия уровней B и C).
 
 В случае возникновения ситуации **A** необходимо "Выключить все электрические приборы". **B** - "Закрыть входные двери и окна". **C** - "Соблюдать спокойствие"
 */

let situation: Character = "C"

switch situation {
case "A":
    print("Выключить все электрические приборы")
    fallthrough
case "B":
    print("Закрыть входные двери и окна")
    fallthrough
default:
    print("Соблюдать спокойствие")
}


//: [Ранее: Задание 1](@previous)  |  задание 2 из 3  |  [Далее: Задание 3](@next)
