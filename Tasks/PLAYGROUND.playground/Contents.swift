import UIKit

//Створити об’єкти “собака”, “мешканець” та “будинок”, створити взаємозв’язки між ними - тобто в будинку проживають мешканці, у кожного мешканця може бути своя собака (собаки). Це значить що кожна собака знає лише свого господаря, а кожен будинок знає лише свої мешканців, і кожен мешканець знає будинок де він проживає та собак які йому належать. Можуть існувати як бездомні люди з собаками так і одинокі собаки. Згенерувати вручну масив собак, жильців та будинків (можна за допомогою генераторів випадкових чисел), і задати яка з собак з яким мешканцем в якому будинку живе. Створити функцію яка буде обходити масив будинків і формувати звіт - які собаки в яких будинках мешкають.
class House {
    var houseName: String
    init (_ name: String) { self.houseName = name }
    var human: Human?
    deinit { print("Дома \(houseName) не существует.") }
}

class Human {
    var humanName: String
    init (_ name: String) { self.humanName = name }
    weak var house: House?
    var dog: Dog?
    deinit { print("Человек с именем \(humanName) не существует.") }
}
class Dog {
    var dogName: String
    init (_ name: String) { self.dogName = name }
    weak var human: Human?
    deinit { print("Данной собаки не существует.") }
}
var someHouse: House? = House("Apartment41")
var someHuman: Human? = Human("Jane Doe")
var someDog: Dog? = Dog("Jack")
someHouse?.human = someHuman
someHuman?.dog = someDog
someHuman = nil
print(someHouse?.human?.humanName)
