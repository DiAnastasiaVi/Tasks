import UIKit

//Непорожній масив А містить N цілих. Пара цілих (Р, В) називаються К-комплементарними в масиві А if 0<= P, B <N та А(Р) + А(В) = К
//Написати функцію
//public func solution(_ K : Int, _ A : inout [Int]) -> Int
//Яка б за даним цілим К та непорожнім масивом А повертала кількість К-комплементарних пар в масиві А.
var arrayToCheck = [1, 2, 3, 4, 6, 5, 5, 7, 8, 9, 10]
public func solution(_ K : Int, _ A : inout [Int]) -> Int {
    var first = 0
    var second = 0
    var dictionaryOfPairs : [Int: Int] = [:]
    for i in A {
        first = i
        second = K - first
        if A.contains(second) && first >= 0 && second < A.count && A.firstIndex(of: first) != A.lastIndex(of: second) {
            dictionaryOfPairs.updateValue(second, forKey: first)
        }
    }
    return dictionaryOfPairs.keys.count
}
print(solution(8, &arrayToCheck))
