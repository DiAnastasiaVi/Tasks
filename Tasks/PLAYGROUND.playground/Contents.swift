import UIKit

//B03-01
//Функція, яка приймає рядок, а повертатиме словник, в якому ключами будуть окремі слова з цього рядка, а значення - кількість їх повторів у реченні
let stringToChange = "Subscripting a dictionary with a key returns an optional value, because a dictionary might not hold a value for the key that you use in the subscript"
func createDictionary(from inoutString: String) -> Dictionary<String, Int> {
    let words = inoutString.lowercased().components(separatedBy:
                                                            .whitespacesAndNewlines)
    let setOfWords = Array(Set(words).filter{ !$0.hasSuffix(",") })
    var newDictionary = [String : Int]()
    for item in setOfWords {
        let values = words.filter { $0 == item }.count
        newDictionary.updateValue(values, forKey: item)
    }
    return newDictionary
}
print(createDictionary(from: stringToChange))
