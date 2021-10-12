import UIKit

//B03-01
//Функція, яка приймає рядок, а повертатиме словник, в якому ключами будуть окремі слова з цього рядка, а значення - кількість їх повторів у реченні
let stringToChange = "Subscripting a dictionary with a key returns an optional value, because a dictionary might not hold a value for the key that you use in the subscript"
func createDictionary(from inoutString: String) -> [String: Int] {
    let stringInFunction = String(inoutString
                                    .map{$0.isPunctuation ? " " : $0})
    let words = stringInFunction
                .lowercased()
                .components(separatedBy: .whitespacesAndNewlines)
                .filter{!$0.isEmpty}
    var newDictionary = [String : Int]()
    for item in words {
        newDictionary[item] = (newDictionary[item] ?? 0) + 1
    }
    return newDictionary
}
print(createDictionary(from: stringToChange))
