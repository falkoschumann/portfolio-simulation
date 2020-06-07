import Foundation

public struct Portfolio {
    public struct Stock {
        public let name: String
        public let symbol: String
        public let currency: String
        public let bought: Date
        public let qty: Int
        public let buyingPrice: Double
        public let currentPrice: Double
        public let lastUpdated: Date
    }

    public let entries: [Stock] = []

    public init() {}
}
