import Foundation

final class StringProcessor {
    private let input: [String]?

    init(input: [String]?) {
        self.input = input
    }

    func removeStringsWithRepeatedLetters() -> [String] {
        guard let input else { return [] }
        return input.filter { word in
            var seen = Set<Character>()
            for char in word.lowercased() {
                if seen.contains(char) {
                    return false
                }
                seen.insert(char)
            }
            return true
        }
    }
}
