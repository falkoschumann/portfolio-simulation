public protocol StockExchangeProviderProtocol {
    func getPrice(symbols: [String]) -> [(symbol: String, price: Double)]
    func findCandidates(pattern: String) -> [CandidateStockInfo]
}

public struct CandidateStockInfo {
    public let name: String
    public let symbol: String
    public let currency: String
    public let price: Double
}
