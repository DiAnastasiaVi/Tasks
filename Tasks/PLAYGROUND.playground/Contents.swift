import UIKit

//Написати функцію, яка обчислює останні 6 цифр факторіалу числа (якщо воно менше аніж шестизначне - то просто число, якщо більше - то лише останні цифри)
//n! = (n)*(n-1)*(n-2)*….*2*1

let number = 5
func factorial(_ n: Int) -> Int {
    var numberInFunc = 1
    if n != 0 {
        numberInFunc = n * factorial(n - 1)
    }
    return numberInFunc
}
print(factorial(number))

//var numberInFunc = 1
//if n != 0 {
//    numberInFunc = n * factorial(n - 1)
//}
