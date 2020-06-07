public protocol MessageHandlingProtocol {
    func handle(_ command: UpdatePortfolioCommand) -> CommandStatus
    func handle(_ query: PortfolioQuery) -> PortfolioQueryResult
    func handle(_ command: BuyStockCommand) -> CommandStatus
    func handle(_ query: CandidateStocksQuery) -> CandidateStocksQueryResult
    func handle(_ command: SellStockCommand) -> CommandStatus
    func handle(_ query: PortfolioStockQuery) -> PortfolioStockQueryResult
}
