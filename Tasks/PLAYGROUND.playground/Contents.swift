import UIKit

//Написати функцію, яка обчислює останні 6 цифр факторіалу числа (якщо воно менше аніж шестизначне - то просто число, якщо більше - то лише останні цифри)
//n! = (n)*(n-1)*(n-2)*….*2*1

func factorial(_ n: Int) -> Int {
    guard n != 0 else { return 1 }
    var exactlyFactorial = 1
    for i in 1...n {
        exactlyFactorial = (exactlyFactorial * i) % 1_000_000
    }
    return exactlyFactorial
}
print(factorial(24))


//поиск факториала 1
func factorial1(_ n: Int) -> Int{
    guard n != 0 else {return 1}
    return n * factorial1(n - 1) % 1_000_000
}
print(factorial1(21))
