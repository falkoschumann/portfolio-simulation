public protocol PortfolioRepositoryProtocol {
    func load() -> Portfolio
    func store(_ portfolio: Portfolio)
}
