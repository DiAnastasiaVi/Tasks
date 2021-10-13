import UIKit

//Написати функцію, яка приймає два масива чисел. Треба повернути масив, елементи якого зустрічаються в обох масивах.
let firstArray = [1, 2, 3, 7, 8, 9, 11, 12, 13, 18, 19, 20]
let secondArray = [3, 4, 5, 6, 7, 8, 10, 11, 13, 20, 1]
func makeOneArrayFrom(first arrayToCheck1: [Int], second arrayToCheck2: [Int]) -> [Int] {
    let commonArray = arrayToCheck1 + arrayToCheck2
    var arrayFromTwo : [Int] = []
    for sameNumber in commonArray {
        if arrayToCheck1.contains(sameNumber) && arrayToCheck2.contains(sameNumber) {
            arrayFromTwo.append(sameNumber)
        }
    }
    return Array(Set(arrayFromTwo))
}
print (makeOneArrayFrom(first: firstArray, second: secondArray))
