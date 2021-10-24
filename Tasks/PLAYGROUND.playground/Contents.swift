import UIKit

let parenthesisToCheck = "Створити перерахування для дужок ( [ { } ] )"
let parenthesisToCheck1 = "Уточнення: рахувати саме вкладеність дужок, тобто ) ( i ( { ) } мають повертати false"
func checkSpelling(of inoutString: String) -> Bool {
    let parenthesisPairs : [Character : Character] = ["(" : ")", "[" : "]", "{" : "}"]
    var charArray : [Character] = []
    for i in inoutString {
        if let pairOfParenthesis = parenthesisPairs[i] {
            charArray.append(pairOfParenthesis)
        }
        else if charArray.last == i {
            charArray.popLast()
        }
    }
    return charArray.isEmpty
}
print(checkSpelling(of: parenthesisToCheck))
print(checkSpelling(of: parenthesisToCheck1))
