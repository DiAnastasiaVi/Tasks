import UIKit

//Переробити задачу 05 з блоку 03 (про суму двох найменших чисел) щоб вона повертала або результат або кидала помилку що на вході порожній масив або кидала помилку що на вході лише одне значення (і передавала це значення)
let myNumbers1 = [88, 92, 44, 4, 23, 9, 17, 3]
let myNumbers2 = [6]
let myNumbers3 : [Int] = []

enum ErrorFound: Error {
    case arrayIsEmpty
    case arrayContainsLessThan2Elements(String)
}
func findingError<T: Numeric & Comparable>(in inoutArray: [T]) throws -> String {
    guard !inoutArray.isEmpty else {
        throw ErrorFound.arrayIsEmpty
    }
    guard inoutArray.count >= 2 else {
        throw ErrorFound.arrayContainsLessThan2Elements("\(inoutArray[0])")
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
[myNumbers1, myNumbers2, myNumbers3].forEach{
    do {
        print(try findingError(in: $0))
    } catch {
        print(error) }
}
