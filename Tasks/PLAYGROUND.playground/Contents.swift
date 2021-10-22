import UIKit

// 1 - Функція має приймати на вхід масив чисел, і повертати суму двох найменших чисел. Виконувати усі необхідні перевіркиКоли задачу зробиш - спробуй впоратись і з додатковим ускладненням (додав підзадачу)
// 2 - Функція має однаково працювати і з масивом Int і з масивом Float, повертаючи результат того ж типу, який буде на вході.

let myNumbers1 = [88, 92, 44, 4, 23, 9, 17, 3]
func toFindSumOfTwoMin(in inoutArray: [Int]) -> Int {
    let arrayMin1 = inoutArray.min()
    var arrayMin2 : Int
    for i in inoutArray {
        if (inoutArray[i] > arrayMin1 ?? 0) && i != inoutArray.firstIndex(of: arrayMin1 ?? 0) {
            arrayMin2 = i
            print (arrayMin1, arrayMin2)
        }
    }
    return (arrayMin1 ?? 0)
}
print (toFindSumOfTwoMin(in: myNumbers1))
//
//
//
//let myNumbers2 = [88.11111, 92.2222222, 44.444444444, 4.6666666, 23.6666666, 9.777, 17.999996]
//func toFindSumOfTwoMin(in inoutArray: [Double]) -> Double {
//    let inoutArrayMin = inoutArray.min()
//    var arrayInFunc = inoutArray
//    for num in arrayInFunc {
//        if num == inoutArrayMin {
//            arrayInFunc.remove(at: arrayInFunc.firstIndex(of: num) ?? 0)
//        }
//    }
//    return (inoutArrayMin ?? 0) + (arrayInFunc.min() ?? 0)
//}
//print (toFindSumOfTwoMin(in: myNumbers2))

