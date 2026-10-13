import Foundation

final class ArrayController {
    private let immutableArray: [String] = ["red", "green", "blue"]
    private var mutableArray: [String] = []

    func printArrays() {
        print("Immutable array: \(immutableArray), count = \(immutableArray.count)")
        print("Mutable array: \(mutableArray), count = \(mutableArray.count)")
    }

    func add(_ value: String) {
        mutableArray.append(value)
    }

    func insert(_ value: String, at index: Int) {
        guard index >= 0 && index <= mutableArray.count else {
            print("Invalid index")
            return
        }
        mutableArray.insert(value, at: index)
    }

    func removeLast() {
        if mutableArray.isEmpty {
            print("Mutable array is empty")
        } else {
            mutableArray.removeLast()
        }
    }

    func remove(at index: Int) {
        guard index >= 0 && index < mutableArray.count else {
            print("Invalid index")
            return
        }
        mutableArray.remove(at: index)
    }

    func clear() {
        mutableArray.removeAll()
    }

    func demoStringProcessor() {
        let optionalInput: [String]? = ["abc", "hello", "swift", "mama", "dog"]
        let processor = StringProcessor(input: optionalInput)
        let cleaned = processor.removeStringsWithRepeatedLetters()
        print("Input: \(optionalInput ?? [])")
        print("Without repeated letters: \(cleaned)")
    }
}
