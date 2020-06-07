import PortfolioSimulationContract

class MessageHandling : MessageHandlingProtocol {
    private let repo: PortfolioRepositoryProtocol
    private let ex: StockExchangeProviderProtocol

    convenience init() {
        self.init(repo: PortfolioRepository(), ex: StockExchangeProvider())
    }

    internal init (repo: PortfolioRepositoryProtocol, ex: StockExchangeProviderProtocol){
        self.repo = repo
        self.ex = ex
    }

    func handle(_ command: UpdatePortfolioCommand) -> CommandStatus {
        return Success()
    }

    func handle(_ query: PortfolioQuery) -> PortfolioQueryResult {
        let portfolio = repo.load()
        let portfolioReturns = PortfolioManager.calculateReturns(portfolio)

        func map(e: Portfolio.Stock) -> PortfolioQueryResult.StockInfo {
            return PortfolioQueryResult.StockInfo(
                name: e.name,
                symbol: e.symbol,
                currency: e.currency,
                qty: e.qty,
                buyingPrice: e.buyingPrice,
                currentPrice: e.currentPrice,
                buyingValue: Double(e.qty) * e.buyingPrice,
                currentValue: Double(e.qty) * e.currentPrice,
                returnValue: portfolioReturns.returns[e.symbol]!.returnValue,
                rateOfReturn: portfolioReturns.returns[e.symbol]!.rateOfReturn
            )
        }

        func result() -> PortfolioQueryResult {
            return PortfolioQueryResult(
                stocks: portfolio.entries.map(map),
                portfolioValue: portfolio.entries.map { Double($0.qty) * $0.currentPrice}.reduce(0, { $0 + $1 }),
                portfolioRateOfReturn: portfolioReturns.totalRateOfReturn)
        }

        return result()
    }

    func handle(_ command: BuyStockCommand) -> CommandStatus {
        // TODO: Not implemented yet
        return Success()
    }

    func handle(_ query: CandidateStocksQuery) -> CandidateStocksQueryResult {
        // TODO: Not implemented yet
        return CandidateStocksQueryResult(candidates: [])
    }

    func handle(_ command: SellStockCommand) -> CommandStatus {
        // TODO: Not implemented yet
        return Success()
    }

    func handle(_ query: PortfolioStockQuery) -> PortfolioStockQueryResult {
        // TODO: Not implemented yet
        return PortfolioStockQueryResult(matchingStocks: [])
    }
}
