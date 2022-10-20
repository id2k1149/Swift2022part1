import Foundation

/*:
 ## Задание 3
 
 Необходимо вычислить **площадь** и **периметр** прямоугольного треугольника.
 
 Катет AC = 8.0

 Катет CB = 6.0.
 
 Гипотенузу **AB** вычисляем при помощи функции `sqrt(Double)`, поместив в скобки вместо `Double` сумму квадратов катетов.
 
 > В расчетах можно использовать только арифметические операторы. Функцию `pow` использовать не надо.
 */
let triangleSideAC = 8.0
let triangleSideCB = 6.0

let triangleSideAB = sqrt(triangleSideAC * triangleSideAC + triangleSideCB * triangleSideCB)

let triangleArea = triangleSideAC * triangleSideCB / 2
print("Triangle area is \(triangleArea)")

let trianglePerimeter = triangleSideAC + triangleSideCB + triangleSideAB
print("Triangle perimeter is \(trianglePerimeter)")


//: [Ранее: Задание 2](@previous) | Задание 3 из 3
