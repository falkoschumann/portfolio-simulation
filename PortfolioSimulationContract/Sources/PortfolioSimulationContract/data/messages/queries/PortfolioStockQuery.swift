public struct PortfolioStockQuery {
    public let pattern: String
}

public struct PortfolioStockQueryResult {
    public let matchingStocks: (name: String, symbol: String)
}
