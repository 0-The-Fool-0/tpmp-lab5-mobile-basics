import Foundation

enum ConsoleView {
    static func printMenu() {
        print(
            """
            \n=== Task 7 Menu ===
            1) Print arrays
            2) Add element
            3) Insert element by index
            4) Remove last
            5) Remove by index
            6) Remove all
            7) Run StringProcessor demo
            0) Exit
            """
        )
    }

    static func ask(_ message: String) -> String {
        print(message, terminator: " ")
        return readLine() ?? ""
    }
}
