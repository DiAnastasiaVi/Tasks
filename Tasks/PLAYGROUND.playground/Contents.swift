import UIKit

//Написати функцію, що буде приймати масив, а також число N і приймає оператор (менше, більше або дорівнює) і повертає відфільтрований масив. Наприклад, якщо передати число 3 і оператор “=” то видаляти всі елементи які зустрічаються рівно 3 рази.
enum ComparingWithN {
    case theNumberIsRepeatedNTimes
    case theNumberIsRepeatedMoreThanNTimes
    case theNumberIsRepeatedLessThanNTimes
}
let firstArray = [1, 1, 4, 4, 4, 6, 7, 8, 8, 5, 5, 3, 1, 1]
func function(inoutArray: [Int], statement: ComparingWithN, N: Int) -> [Int] {
    
}
print (function(inoutArray: firstArray, statement: .theNumberIsRepeatedNTimes, N: 3))

//var sortedByStatement : [Int] = []
//var dictionaryOfNum : [Int : Int] = [ : ]
//for i in inoutArray {
//    dictionaryOfNum[i] = (dictionaryOfNum[i] ?? 0) + 1
//}
//for (number, repeating) in dictionaryOfNum {
//    switch statement {
//    case .theNumberIsRepeatedNTimes:
//        if repeating == N {
//            dictionaryOfNum.removeValue(forKey: number)
//        }
//    case .theNumberIsRepeatedMoreThanNTimes:
//        if repeating > N {
//            dictionaryOfNum.removeValue(forKey: number)
//        }
//    case .theNumberIsRepeatedLessThanNTimes:
//        if repeating < N {
//            dictionaryOfNum.removeValue(forKey: number)
//        }
//    }
//}
//print(dictionaryOfNum)
//return sortedByStatement
