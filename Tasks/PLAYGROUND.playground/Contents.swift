import UIKit

//Непорожній масив А містить N цілих. Пара цілих (Р, В) називаються К-комплементарними в масиві А if 0<= P, B <N та А(Р) + А(В) = К
//Написати функцію
//public func solution(_ K : Int, _ A : inout [Int]) -> Int
//Яка б за даним цілим К та непорожнім масивом А повертала кількість К-комплементарних пар в масиві А.
var arr = [1, 2, 3, 4, 5, 6, 7, 8, 9]
public func solution(_ K : Int, _ A : inout [Int]) -> Int {
    var P = 0
    var B = 0
    var N = A.count
    
//    for (firstIndex, firstElement) in A.enumerated() {
//        for (secondIndex, secondElement) in A.enumerated() {
//            if firstIndex != secondIndex && firstElement + secondElement == K {
//
//            }
//        }
//    }
//    return [1: 0]
    return K
}
print(solution(10, &arr))
