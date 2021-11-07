import UIKit

//Розробити об’єкти “електроприлади”, до якого належать “принтер” та “сканер”. Обидва мають метод “увімкнути”, але принтер має метод “друкувати”, а сканер - “сканувати”. Створити об’єкт “МФУ” який суміщає властивості принтера та сканера
struct Printer {
    let powerSupply = "ON"
    let itemFunction = "You can print whatever you want to."
}
struct Scanner {
    let powerSupply = "ON"
    let itemFunction = "You can scan whatever you want to."
}
class ElectricalAppliances {
    var printer = Printer()
    var scanner = Scanner()
}

struct New {
    let powerSupply = ElectricalAppliances().printer.powerSupply
    let itemFunction = ElectricalAppliances().printer.itemFunction + ElectricalAppliances().scanner.itemFunction
}

print(New())
