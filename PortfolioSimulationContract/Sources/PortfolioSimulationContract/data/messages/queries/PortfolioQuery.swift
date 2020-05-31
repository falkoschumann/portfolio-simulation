public struct PortfolioQuery {}

public struct PortfolioQueryResult {
    public struct StockInfo {
        public let name: String
        public let symbol: String
        public let currency: String
        public let quantity: Int
        public let buyingPrice: Double
        public let buyingValue: Double
        public let currentPrice: Double
        public let currentValue: Double
        public let returnValue: Double
        public let rateOfReturn: Double
    }

    public let stocks: [StockInfo]

    public let portfolioValue: Double
    public let portfolioRateOfReturn: Double
}
