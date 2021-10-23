import UIKit

// 1 - Функція має приймати на вхід масив чисел, і повертати суму двох найменших чисел. Виконувати усі необхідні перевіркиКоли задачу зробиш - спробуй впоратись і з додатковим ускладненням (додав підзадачу)
// 2 - Функція має однаково працювати і з масивом Int і з масивом Float, повертаючи результат того ж типу, який буде на вході.

let myNumbers1 = [88, 92, 44, 4, 23, 9, 17, 3]
let myNumbers2 = [6]
let myNumbers3 : [Int] = []
let myNumbers4 = [nil, 15, 12, 7]
func toFindSumOfTwoMin(in inoutArray: [Int?]) -> Int {
    guard inoutArray.isEmpty == false else { return 0 }
    guard inoutArray.count >= 2 else { return inoutArray[0] ?? 0 }
    guard inoutArray.contains(nil) == false else { return 1 }
    var inoutArrayMin1 = min(inoutArray[0] ?? 0, inoutArray[1] ?? 0)
    var inoutArrayMin2 = max(inoutArray[0] ?? 0, inoutArray[1] ?? 0)
    for i in inoutArray {
        if inoutArrayMin1 > i! {
            inoutArrayMin2 = inoutArrayMin1
            inoutArrayMin1 = i!
        }
        else {
            inoutArrayMin2 = min(i!, inoutArrayMin2)
        }
    }
    return (inoutArrayMin1 ?? 0) + (inoutArrayMin2 ?? 0)
}
print(toFindSumOfTwoMin(in: myNumbers1))
print(toFindSumOfTwoMin(in: myNumbers2))
print(toFindSumOfTwoMin(in: myNumbers3))
print(toFindSumOfTwoMin(in: myNumbers4))


//var inoutArrayMin1 = min(inoutArray[0], inoutArray[1])
//var inoutArrayMin2 = max(inoutArray[0], inoutArray[1])
//for i in inoutArray {
//    if inoutArrayMin1 > i {
//        inoutArrayMin2 = inoutArrayMin1
//        inoutArrayMin1 = i
//    }
//    else {
//        inoutArrayMin2 = min(i, inoutArrayMin2)
//    }
//}
//return inoutArrayMin1 + inoutArrayMin2

