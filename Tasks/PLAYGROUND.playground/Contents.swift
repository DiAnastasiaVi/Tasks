import UIKit

//Створити групу з 5-ти об’єктів що відповідають символам. У всіх них має бути спільна команда “вивести себе”, за якою вони друкують свій символ. Створити об’єкт, який приймає під час ініціалізації рядок з символів, і за ними формує масив об’єктів.
protocol CharacterFunc {
    var character : String { get }
    func printOut()
}
extension CharacterFunc {
    func printOut() {
        if character == character {
            print(character)
        }
    }
}
struct Char1: CharacterFunc {
    var character: String = "!"
}
struct Char2: CharacterFunc {
    var character: String = "@"
}
struct Char3: CharacterFunc {
    var character: String = "#"
}
struct Char4: CharacterFunc {
    var character: String = "$"
}
struct Char5: CharacterFunc {
    var character: String = "%"
}
protocol CharacterArray {
    var characterArray: String { get }
    func makeArray()
}
extension CharacterArray {
    func makeArray() {
        print(Array(arrayLiteral: characterArray))
    }
}
class Arr: CharacterArray {
    var characterArray: String = "\(Char1().character), \(Char2().character), \(Char3().character), \(Char4().character), \(Char5().character)"
}
let e = Char1()
e.printOut()

let q = Arr()
q.makeArray()
