import UIKit

//Послідовність Фібоначчі визначається наступною рекурсивною формулою:
//F(0) = 0
//F(1) = 1
//F(N) = F(N-1) + F(N-2) if N>=2
//Написати функцію
//public func solution(_ N : Int) -> Int
//що за заданим позитивним числом N повертає шість останніх цифр десяткового числа F(N)
//Для прикладу, дано N = 8, функція має повернути 21, так само N = 36 - повертає 930 352 (бо повне число 14 930 352 )
//Припустити що: N - ціле в діапазоні 0… 2 147 483 647
public func solution(_ N: Int) -> Int {
    guard N >= 2 else { return N }
    var f0 = 0
    var f1 = 1
    for _ in 1...N {
        let f = f1
        f1 = (f0 + f1) % 1_000_000
        f0 = f
    }
    return f0
}
print(solution(360))


public func solution1(_ N: Int) -> Int {
    guard N > 1 else { return N }
    return (solution1(N - 1) + solution1(N - 2)) % 1_000_000
}
print (solution1(8))
