import Foundation

func readTwoDigitNumber() -> Int? {
    print("Enter a two-digit number:", terminator: " ")
    guard let input = readLine(), let value = Int(input), (10...99).contains(abs(value)) else {
        return nil
    }
    return abs(value)
}

func containsDigit(_ number: Int, _ digit: Int) -> Bool {
    let tens = number / 10
    let ones = number % 10
    return tens == digit || ones == digit
}

if let number = readTwoDigitNumber() {
    let has3And7 = containsDigit(number, 3) && containsDigit(number, 7)
    let has4And8Or9 = (containsDigit(number, 4) && containsDigit(number, 8)) || containsDigit(number, 9)

    print("Number: \(number)")
    print("a) contains digits 3 and 7: \(has3And7 ? "YES" : "NO")")
    print("b) contains digits (4 and 8) or digit 9: \(has4And8Or9 ? "YES" : "NO")")
} else {
    print("Invalid input. Please run again and enter a two-digit integer.")
}
