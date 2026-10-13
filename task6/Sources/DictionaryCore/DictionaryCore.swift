import Foundation

public struct CountryDictionaryService {
    public private(set) var emptyDictionary: [String: Double]
    public private(set) var countryPopulation: [String: Int]

    public init() {
        self.emptyDictionary = [:]
        self.countryPopulation = [
            "Belarus": 9200000,
            "Poland": 37900000,
            "Lithuania": 2860000
        ]
    }

    public mutating func setSquare(country: String, square: Double) {
        emptyDictionary[country] = square
    }

    public mutating func setPopulation(country: String, population: Int) {
        countryPopulation[country] = population
    }

    public func countSquares() -> Int {
        emptyDictionary.count
    }

    public func countPopulationRecords() -> Int {
        countryPopulation.count
    }

    public func square(for country: String) -> Double? {
        emptyDictionary[country]
    }

    public func population(for country: String) -> Int? {
        countryPopulation[country]
    }

    public func sortedSquaresByKey() -> [(key: String, value: Double)] {
        emptyDictionary.sorted { $0.key < $1.key }
    }

    public func sortedPopulationByValue() -> [(key: String, value: Int)] {
        countryPopulation.sorted { $0.value < $1.value }
    }

    public mutating func removeSquare(country: String) {
        emptyDictionary.removeValue(forKey: country)
    }

    public mutating func clearSquares() {
        emptyDictionary.removeAll()
    }
}
