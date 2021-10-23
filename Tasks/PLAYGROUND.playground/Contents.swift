import UIKit

// 1 - Функція має приймати на вхід масив чисел, і повертати суму двох найменших чисел. Виконувати усі необхідні перевіркиКоли задачу зробиш - спробуй впоратись і з додатковим ускладненням (додав підзадачу)
// 2 - Функція має однаково працювати і з масивом Int і з масивом Float, повертаючи результат того ж типу, який буде на вході.

let myNumbers1 = [88, 92, 44, 4, 23, 9, 17, 3]
let myNumbers2 = [6]
let myNumbers3 : [Int] = []
let myNumbers4 = [3, 1, 2]
func toFindSumOfTwoMin(in inoutArray: [Int]) -> Int? {
    guard !inoutArray.isEmpty else { return nil }
    guard inoutArray.count >= 2 else { return inoutArray[0] }
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
    return inoutArrayMin1 + inoutArrayMin2
}
print(toFindSumOfTwoMin(in: myNumbers1))
print(toFindSumOfTwoMin(in: myNumbers2))
print(toFindSumOfTwoMin(in: myNumbers3))
print(toFindSumOfTwoMin(in: myNumbers4))


//let myNumbers5 = [nil, 3, 1, 2]
//func toFindSumOfTwoMin(in inoutArray: [Int?]) -> Int? {
//    guard !inoutArray.isEmpty else { return nil }
//    guard inoutArray.count >= 2 else { return inoutArray[0] ?? 0 }
//    let nonNilInoutArray = inoutArray.filter{$0 != nil}
//    var inoutArrayMin1 = min(nonNilInoutArray[0]!, nonNilInoutArray[1]!)
//    var inoutArrayMin2 = max(nonNilInoutArray[0]!, nonNilInoutArray[1]!)
//    for i in nonNilInoutArray {
//        if inoutArrayMin1 > i! {
//            inoutArrayMin2 = inoutArrayMin1
//            inoutArrayMin1 = i!
//        }
//        else {
//            inoutArrayMin2 = min(i!, max(nonNilInoutArray[0]!, nonNilInoutArray[1]!))
//        }
//    }
//    return inoutArrayMin1 + inoutArrayMin2
//}
//print(toFindSumOfTwoMin(in: myNumbers5))
