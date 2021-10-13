import UIKit

//Написати функцію, яка приймає два масива чисел. Треба повернути масив, елементи якого зустрічаються в обох масивах.
let firstArray = [1, 2, 3, 7, 8, 9, 11, 12, 13, 18, 19, 20]
let secondArray = [3, 4, 5, 6, 7, 8, 10, 11, 13, 20, 1]
func makeOneArray(from arrayToCheck1: [Int], and arrayToCheck2: [Int]) -> [Int] {
    var arrayFromTwoArrays: [Int] = []
    for sameNumber in arrayToCheck1 {
        if arrayToCheck2.contains(sameNumber) {
            arrayFromTwoArrays.append(sameNumber)
        }
    }
    return Array(Set(arrayFromTwoArrays))
}
print (makeOneArray(from: firstArray, and: secondArray))
