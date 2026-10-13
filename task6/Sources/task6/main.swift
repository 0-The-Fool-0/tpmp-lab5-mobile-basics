import Foundation
import DictionaryCore

func printMenu() {
    print(
        """
        \n=== Task 6 Menu ===
        1) Add/modify country square
        2) Print counts
        3) Find by key
        4) Print all dictionaries
        5) Sort: square by key, population by value
        6) Remove one square record
        7) Clear square dictionary
        0) Exit
        """
    )
}

var service = CountryDictionaryService()
var isRunning = true

while isRunning {
    printMenu()
    print("Choose action:", terminator: " ")
    let choice = readLine() ?? ""

    switch choice {
    case "1":
        print("Country name:", terminator: " ")
        let name = readLine() ?? ""
        print("Square (number):", terminator: " ")
        if let input = readLine(), let square = Double(input), !name.isEmpty {
            service.setSquare(country: name, square: square)
            print("Saved: \(name) -> \(square)")
        } else {
            print("Invalid data.")
        }

    case "2":
        print("Square records: \(service.countSquares())")
        print("Population records: \(service.countPopulationRecords())")

    case "3":
        print("Enter country:", terminator: " ")
        let name = readLine() ?? ""
        let squareInfo = service.square(for: name).map { String($0) } ?? "not found"
        let populationInfo = service.population(for: name).map { String($0) } ?? "not found"
        print("Square: \(squareInfo)")
        print("Population: \(populationInfo)")

    case "4":
        print("Squares dictionary: \(service.emptyDictionary)")
        print("Population dictionary: \(service.countryPopulation)")

    case "5":
        print("Squares sorted by key:")
        for item in service.sortedSquaresByKey() {
            print("\(item.key): \(item.value)")
        }
        print("Population sorted by value:")
        for item in service.sortedPopulationByValue() {
            print("\(item.key): \(item.value)")
        }

    case "6":
        print("Country name to remove from squares:", terminator: " ")
        let name = readLine() ?? ""
        service.removeSquare(country: name)
        print("Removed (if existed).")

    case "7":
        service.clearSquares()
        print("All square records removed.")

    case "0":
        isRunning = false
        print("Bye.")

    default:
        print("Unknown command.")
    }
}
