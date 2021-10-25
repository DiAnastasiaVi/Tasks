import UIKit

//Написати функцію, яка обчислює останні 6 цифр факторіалу числа (якщо воно менше аніж шестизначне - то просто число, якщо більше - то лише останні цифри)
//n! = (n)*(n-1)*(n-2)*….*2*1

let number = 11
func factorial(_ n: Int) -> Int {
    if n == 0 {
        return 1
    }
    else {
        return n * factorial(n-1)
    }
}
print(factorial(number))


//поиск факториала 1
//var numberInFunc = 1
//if n != 0 {
//    numberInFunc = n * factorial(n - 1)
//}

//поиск факториала 2
//if n == 0 {
//    return 1
//}
//else {
//    return n * factorial(n-1)
//}
