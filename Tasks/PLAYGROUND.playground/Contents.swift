import UIKit

//Створити об’єкти “собака”, “мешканець” та “будинок”, створити взаємозв’язки між ними - тобто в будинку проживають мешканці, у кожного мешканця може бути своя собака (собаки). Це значить що кожна собака знає лише свого господаря, а кожен будинок знає лише свої мешканців, і кожен мешканець знає будинок де він проживає та собак які йому належать. Можуть існувати як бездомні люди з собаками так і одинокі собаки. Згенерувати вручну масив собак, жильців та будинків (можна за допомогою генераторів випадкових чисел), і задати яка з собак з яким мешканцем в якому будинку живе. Створити функцію яка буде обходити масив будинків і формувати звіт - які собаки в яких будинках мешкають.
//protocol HouseProtocol {
//    var house: [String] { get }
//    var hasHuman: Bool { get }
//    var human: Human { get }
//}
class House {
    var human: Human? {
        didSet {
            oldValue?.house = nil
            self.human?.house = self
        }
    }
}

class Human {
    var house: House?
    var dog: Dog? {
        didSet {
            oldValue?.human = nil
            self.dog?.human = self
        }
    }
    var humanName: String
    init (_ name: String) {
        self.humanName = name
    }
}
class Dog {
    var dogName: String
    var human: Human?
    init (_ name: String) {
        self.dogName = name
    }
}
var someHouse: House? = House()
var vasya: Human? = Human("CHELOVEK")
var sobaka: Dog? = Dog("SOBAKA")
someHouse?.human = vasya
vasya?.dog = sobaka
print(someHouse?.human?.dog?.dogName)
