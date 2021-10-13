import UIKit

// 1 - Функція має приймати на вхід масив чисел, і повертати суму двох найменших чисел. Виконувати усі необхідні перевіркиКоли задачу зробиш - спробуй впоратись і з додатковим ускладненням (додав підзадачу)
// 2 - Функція має однаково працювати і з масивом Int і з масивом Float, повертаючи результат того ж типу, який буде на вході.
let a = [88, 92, 44, 4, 23, 9, 17]
func toFindSumOfTwoMin(in inoutArray: [Int]) -> Int {
    let min = inoutArray.min()
    var nextMin = 0
    var arr = inoutArray
    for num in arr {
        if num == min {
            arr.remove(at: arr.firstIndex(of: num) ?? 0)
            nextMin = arr.min() ?? 0
        }
    }
    let sum = min! + nextMin
    return sum
}
print (toFindSumOfTwoMin(in: a))
