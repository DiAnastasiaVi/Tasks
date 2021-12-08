import UIKit

//Створити об’єкти “собака”, “мешканець” та “будинок”, створити взаємозв’язки між ними - тобто в будинку проживають мешканці, у кожного мешканця може бути своя собака (собаки). Це значить що кожна собака знає лише свого господаря, а кожен будинок знає лише свої мешканців, і кожен мешканець знає будинок де він проживає та собак які йому належать. Можуть існувати як бездомні люди з собаками так і одинокі собаки. Згенерувати вручну масив собак, жильців та будинків (можна за допомогою генераторів випадкових чисел), і задати яка з собак з яким мешканцем в якому будинку живе. Створити функцію яка буде обходити масив будинків і формувати звіт - які собаки в яких будинках мешкають.
protocol HouseProtocol {
    var human: Int { get }
}
protocol HumanProtocol {
    var house: Int { get }
    var dog: Int { get }
}
protocol DogProtocol {
    var human: Int { get }
}
class House: HouseProtocol {
    var human = Int.random(in: 0..<10)
}
class Human: HumanProtocol {
    var house = Int.random(in: 0..<10)
    var dog = Int.random(in: 0..<10)
}
class Dog: DogProtocol {
    var human = Int.random(in: 0..<10)
}
protocol FindDogAndItsHouse {
    func dogAndHouse()
}
extension FindDogAndItsHouse {
    func dogAndHouse() {
        let house = Human().house
        let dog = Human().dog
        let human = House().human
        let dogWithHouse = "Отчёт: в \(house) дом(ах) проживает \(dog) собак(и)."
        print(dogWithHouse)
        print(house, dog, human)
    }
}
class HouseDog: FindDogAndItsHouse {
    var house: Int = Human().house
    var dog: Int = Human().dog
}
let a = HouseDog()
a.dogAndHouse()
