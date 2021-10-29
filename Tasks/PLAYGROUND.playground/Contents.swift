import UIKit

//Дано непорожній масив з N цілих елементів. Кожен елемент розглядається як відносний вказівник на наступний елемент масиву A. Тобто, якщо А(К) = М тоді елемент А(К) вказує на елемент А(К+М).
//Масив визначає послідовність стрибків пішака:
//Починає йти з клітинки А(0);
//Кожен крок пішак просувається від елементу А(К) до наступного, на який вказує елемент А(К)
//Пішак може стрибати вічно або вискочити за межі масиву
//Написати функцію, яка за даним непорожнім масивом А що містить N цілих елементів повертає кількість стрибків після яких пішак вийде за межі масиву. Якщо цього ніколи не станеться - повернути “nil”

//масив [2, 0, -1] має привести до зациклювання:  він з першої клітинки стрибає на дві вперед, потім на одну назад а потім має лишатись на середній клітинці бо вона вказує сама на себе
var array = [2, 1, 1, 2, 100] //3 хода
var array2 = [1, 1, 1, 10] //4 хода
var array3 = [2, 100, -3, 1]
var array4 = [1, 2, 0, 2, 1, 1, 3, 0, 1, 1, 1] //7 ходов
func countOfMovesToGoBeyondTheLimit(of inoutArray: [Int]) -> Int? {
    var index = inoutArray.startIndex
    var value = inoutArray[index]
    let endIndex = inoutArray.endIndex - 1
    for moves in inoutArray.indices {
        (index, value) = (index + inoutArray[index], inoutArray[index])
        if index > endIndex || index < 0 {
            return moves + 1
        }
    }
    return nil
}
print(countOfMovesToGoBeyondTheLimit(of: array))
print(countOfMovesToGoBeyondTheLimit(of: array2))
print(countOfMovesToGoBeyondTheLimit(of: array3))
print(countOfMovesToGoBeyondTheLimit(of: array4))
