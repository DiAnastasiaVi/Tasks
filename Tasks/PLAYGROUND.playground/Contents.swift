import UIKit

//Розробити об’єкти “електроприлади”, до якого належать “принтер” та “сканер”. Обидва мають метод “увімкнути”, але принтер має метод “друкувати”, а сканер - “сканувати”. Створити об’єкт “МФУ” який суміщає властивості принтера та сканера
protocol IsDeviceReady {
    var isDeviceOn : Bool { get set }
}
protocol DeviceForPrinting: IsDeviceReady {
    func toPrint(_: String)
}
extension DeviceForPrinting {
    func toPrint(_ text: String) {
        if isDeviceOn {
            print("'\(text)'")
        }
        else {
            print("Turn ON your device to start. ")
        }
    }
}
protocol ScanningDevice: IsDeviceReady {
    func toScan(_: String)
}
extension ScanningDevice {
    func toScan(_ text: String) {
        if isDeviceOn {
            print(text.lowercased())
        }
        else {
            print("Turn ON your device to start. ")
        }
    }
}
protocol MFUDevice: DeviceForPrinting, ScanningDevice {
    func toCopy(_: String)
}
extension MFUDevice {
    func toCopy(_ text: String) {
        if isDeviceOn {
            toScan(text)
            toPrint(text)
        }
        else {
            print("Turn ON your device to start. ")
        }
    }
}
struct Printer: DeviceForPrinting {
    var isDeviceOn = true
}
struct Scanner: ScanningDevice {
    var isDeviceOn = true
}
struct MFU: MFUDevice {
    var isDeviceOn = true
}
let printer = Printer()
let scanner = Scanner()
let mfu = MFU()
//printer.toPrint("HELLO WORLD")
//scanner.toScan("HELLO WORLD")
mfu.toCopy("HELLO WORLD")
mfu.toScan("HI")
