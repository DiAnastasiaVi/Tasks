import UIKit

//Створити групу з 5-ти об’єктів що відповідають символам. У всіх них має бути спільна команда “вивести себе”, за якою вони друкують свій символ. Створити об’єкт, який приймає під час ініціалізації рядок з символів, і за ними формує масив об’єктів.
//protocol PrintOut {
//    func printOut(character: Characters)
//}
//extension PrintOut {
//    func printOut(character: Characters) {
//        print(character.char1)
//    }
//}
protocol PrintOut {
    func printOut(character: String)
}
extension PrintOut {
    func printOut(character: String) {
        if character == character {
            print(character)
        }
    }
}
struct Characters: PrintOut {
    let char1 : String = "!"
    let char2 : String = "@"
    let char3 : String = "#"
    let char4 : String = "$"
    let char5 : String = "%"
}

let a = Characters()
a.printOut(character: a.char1)
