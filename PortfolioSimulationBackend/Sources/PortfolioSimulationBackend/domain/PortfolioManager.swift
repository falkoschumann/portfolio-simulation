import PortfolioSimulationContract

struct PortfolioReturns {
    struct EntryReturn {
        let returnValue: Double
        let rateOfReturn: Double
    }

    let returns: Dictionary<String, EntryReturn>
    let totalReturn: Double
    let totalRateOfReturn: Double
}

class PortfolioManager {
    static func calculateReturns(_ portfolio: Portfolio) -> PortfolioReturns {
        // TODO: Not implemented yet
        return PortfolioReturns(returns: Dictionary(), totalReturn: 0.0, totalRateOfReturn: 0.0)
    }
}
