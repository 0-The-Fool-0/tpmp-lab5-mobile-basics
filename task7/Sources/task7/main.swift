import Foundation

let controller = ArrayController()
var running = true

while running {
    ConsoleView.printMenu()
    let choice = ConsoleView.ask("Choose action:")

    switch choice {
    case "1":
        controller.printArrays()
    case "2":
        let value = ConsoleView.ask("Enter new value:")
        controller.add(value)
    case "3":
        let value = ConsoleView.ask("Enter value:")
        let indexInput = ConsoleView.ask("Enter index:")
        if let index = Int(indexInput) {
            controller.insert(value, at: index)
        } else {
            print("Invalid index")
        }
    case "4":
        controller.removeLast()
    case "5":
        let indexInput = ConsoleView.ask("Enter index:")
        if let index = Int(indexInput) {
            controller.remove(at: index)
        } else {
            print("Invalid index")
        }
    case "6":
        controller.clear()
    case "7":
        controller.demoStringProcessor()
    case "0":
        running = false
        print("Bye.")
    default:
        print("Unknown command")
    }
}
