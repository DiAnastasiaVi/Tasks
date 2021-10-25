import UIKit

//Написати функцію, що буде приймати масив, а також число N і приймає оператор (менше, більше або дорівнює) і повертає відфільтрований масив. Наприклад, якщо передати число 3 і оператор “=” то видаляти всі елементи які зустрічаються рівно 3 рази.
enum ComparingWithN {
    case theNumberIsRepeatedNTimes
    case theNumberIsRepeatedMoreThanNTimes
    case theNumberIsRepeatedLessThanNTimes
}
let arrayToSort = [1, 1, 4, 4, 4, 6, 7, 8, 8, 5, 5, 3, 1, 1]
func removeNumbersCountingN(in unsortedArray: [Int], statement: ComparingWithN, N: Int) -> [Int] {
    var sortedByStatement = unsortedArray
    var dictionaryOfNum : [Int : Int] = [:]
    for i in unsortedArray {
        dictionaryOfNum[i] = (dictionaryOfNum[i] ?? 0) + 1
    }
    for (number, repeating) in dictionaryOfNum {
        switch statement {
        case .theNumberIsRepeatedNTimes:
            if repeating == N {
                sortedByStatement.removeAll(where: {$0 == number})
            }
        case .theNumberIsRepeatedMoreThanNTimes:
            if repeating >= N {
                sortedByStatement.removeAll(where: {$0 == number})
            }
        case .theNumberIsRepeatedLessThanNTimes:
            if repeating <= N {
                sortedByStatement.removeAll(where: {$0 == number})
            }
        }
    }
    return sortedByStatement
}
print(removeNumbersCountingN(in: arrayToSort, statement: .theNumberIsRepeatedNTimes, N: 2))
print(removeNumbersCountingN(in: arrayToSort, statement: .theNumberIsRepeatedMoreThanNTimes, N: 2))
print(removeNumbersCountingN(in: arrayToSort, statement: .theNumberIsRepeatedLessThanNTimes, N: 2))
