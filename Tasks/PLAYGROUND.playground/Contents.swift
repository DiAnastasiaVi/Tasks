import UIKit

let parenthesisToCheck = "Створити перерахування для дужок"
let parenthesisToCheck1 = "( [ { } ] )"
let parenthesisToCheck2 = "Уточнення: рахувати саме вкладеність дужок, тобто ) ( i ( { ) } мають повертати false"
func checkSpelling(of arithmeticExpression: String) -> Bool {
    let parenthesisPairs : [Character : Character] = ["(" : ")", "[" : "]", "{" : "}"]
    var charArray : [Character] = []
    for i in arithmeticExpression {
        if let pair = parenthesisPairs[i] {
            charArray.append(pair)
        }
        else if charArray.last == i {
            charArray.popLast()
        }
    }
    return charArray.isEmpty
}
print(checkSpelling(of: parenthesisToCheck))
print(checkSpelling(of: parenthesisToCheck1))
print(checkSpelling(of: parenthesisToCheck2))
