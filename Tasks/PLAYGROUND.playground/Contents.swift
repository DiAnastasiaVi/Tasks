import UIKit

let parenthesisToCheck = "Створити перерахування для дужок"
let parenthesisToCheck1 = "( [ { } ] )"
let parenthesisToCheck2 = "Уточнення: рахувати саме вкладеність дужок, тобто ) ( i ( { ) } мають повертати false"
func checkSpelling(of inoutString: String) -> Bool {
    let parenthesisPairs : [Character : Character] = ["(" : ")", "[" : "]", "{" : "}"]
    var charArray : [Character] = []
    for i in inoutString {
        if let pair = parenthesisPairs[i] {
            charArray.append(pair)
        }
        else if charArray.last == i {
            charArray.popLast()
        }
    }
    for (leftParenthesis, _) in parenthesisPairs {
        if !inoutString.contains(leftParenthesis) {
            return false
        }
    }
    return charArray.isEmpty
}
print(checkSpelling(of: parenthesisToCheck))
print(checkSpelling(of: parenthesisToCheck1))
print(checkSpelling(of: parenthesisToCheck2))
