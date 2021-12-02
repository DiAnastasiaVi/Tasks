import UIKit

//Переробити задачу 05 з блоку 03 (про суму двох найменших чисел) щоб вона повертала або результат або кидала помилку що на вході порожній масив або кидала помилку що на вході лише одне значення (і передавала це значення)
let myNumbers1 = [88, 92, 44, 4, 23, 9, 17, 3]
let myNumbers2 = [6]
let myNumbers3 : [Int] = []

enum ErrorFound: String, Error {
    case arrayIsEmpty = "ERROR: Array Is Empty. "
    case arrayContainsLessThan2Elements = "ERROR: Array Contains Less Than 2 Elements. "
}

func findingError<T: Numeric & Comparable>(in inoutArray: [T]) -> String {
    guard !inoutArray.isEmpty else {
        return ErrorFound.arrayIsEmpty.rawValue
    }
    guard inoutArray.count >= 2 else {
        return ErrorFound.arrayContainsLessThan2Elements.rawValue
    }
     var inoutArrayMin1 = min(inoutArray[0], inoutArray[1])
     var inoutArrayMin2 = max(inoutArray[1], inoutArray[0])
     for i in inoutArray {
        if inoutArrayMin1 > i {
            inoutArrayMin2 = inoutArrayMin1
            inoutArrayMin1 = i
        }
        else {
            inoutArrayMin2 = min(i, inoutArray.max()!)
        }
    }
    return "\(inoutArrayMin1 + inoutArrayMin2)"
}
print(findingError(in: myNumbers1))
print(findingError(in: myNumbers2))
print(findingError(in: myNumbers3))
