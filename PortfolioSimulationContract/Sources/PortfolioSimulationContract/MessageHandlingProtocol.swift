public protocol MessageHandlingProtocol {
    func handle(command: UpdatePortfolioCommand) -> CommandStatus
    func handle(query: PortfolioQuery) -> PortfolioQueryResult
    func handle(command: BuyStockCommand) -> CommandStatus
    func handle(query: CandidateStocksQuery) -> CandidateStocksQueryResult
    func handle(command: SellStockCommand) -> CommandStatus
    func handle(query: PortfolioStockQuery) -> PortfolioStockQueryResult
}
