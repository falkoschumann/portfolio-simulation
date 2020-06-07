import PortfolioSimulationContract

class StockExchangeProvider : StockExchangeProviderProtocol {
    func getPrice(symbols: [String]) -> [(symbol: String, price: Double)] {
        // TODO: Not implemented yet
        return []
    }

    func findCandidates(pattern: String) -> [CandidateStockInfo] {
        // TODO: Not implemented yet
        return []
    }
}
