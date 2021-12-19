import UIKit

//Створити групу з 5-ти об’єктів що відповідають символам. У всіх них має бути спільна команда “вивести себе”, за якою вони друкують свій символ. Створити об’єкт, який приймає під час ініціалізації рядок з символів, і за ними формує масив об’єктів.
protocol CharacterProtocol {
    var character : String { get }
    func printOut()
}
extension CharacterProtocol {
    func printOut() {
        if character == character {
            print(character)
        }
    }
}
struct Character1: CharacterProtocol {
    var character: String = "!"
}
struct Character2: CharacterProtocol {
    var character: String = "@"
}
struct Character3: CharacterProtocol {
    var character: String = "#"
}
struct Character4: CharacterProtocol {
    var character: String = "$"
}
struct Character5: CharacterProtocol {
    var character: String = "%"
}
protocol CharacterArray {
    var characterArray: String { get }
}
extension CharacterArray {
    func makeArray() -> [CharacterProtocol] {
        return characterArray.compactMap {
            switch $0 {
            case "!":
                return Character1()
            case "@":
                return Character2()
            case "#":
                return Character3()
            case "$":
                return Character4()
            case "%":
                return Character5()
            default:
                return nil
            }
        }
    }
}
class FinalCharacterArray: CharacterArray {
    var characterArray: String = "\(Character1().character), \(Character2().character), \(Character3().character), \(Character4().character), \(Character5().character)"
}


