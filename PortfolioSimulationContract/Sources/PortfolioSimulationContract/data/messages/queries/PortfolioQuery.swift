public struct PortfolioQuery {
    public init() {}
}

public struct PortfolioQueryResult {
    public struct StockInfo {
        public let name: String
        public let symbol: String
        public let currency: String
        public let qty: Int
        public let buyingPrice: Double
        public let currentPrice: Double
        public let buyingValue: Double
        public let currentValue: Double
        public let returnValue: Double
        public let rateOfReturn: Double

        public init(name: String,
                    symbol: String,
                    currency: String,
                    qty: Int,
                    buyingPrice: Double,
                    currentPrice: Double,
                    buyingValue: Double,
                    currentValue: Double,
                    returnValue: Double,
                    rateOfReturn: Double) {
            self.name = name
            self.symbol = symbol
            self.currency = currency
            self.qty = qty
            self.buyingPrice = buyingPrice
            self.buyingValue = buyingValue
            self.currentPrice = currentPrice
            self.currentValue = currentValue
            self.returnValue = returnValue
            self.rateOfReturn = rateOfReturn
        }
    }

    public let stocks: [StockInfo]

    public let portfolioValue: Double
    public let portfolioRateOfReturn: Double

    public init(stocks: [StockInfo], portfolioValue: Double,  portfolioRateOfReturn: Double) {
        self.stocks = stocks
        self.portfolioValue = portfolioValue
        self.portfolioRateOfReturn = portfolioRateOfReturn
    }
}
