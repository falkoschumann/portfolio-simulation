import XCTest
@testable import PortfolioSimulationBackend

import PortfolioSimulationContract

final class MessageHandlingTests: XCTestCase {
    func testPortfolioQuery() {
        let repo = PortfolioRepository(filePath: "smallportfolio.csv")
        let ex = StockExchangeProvider()
        let sut = MessageHandling(repo: repo, ex: ex)

        let result = sut.handle(PortfolioQuery())

        XCTAssertEqual(result.portfolioValue, 180.0)
        XCTAssertEqual(result.portfolioRateOfReturn, 0.5)
        XCTAssertEqual(result.stocks[0].currentValue, 20.0)
        XCTAssertEqual(result.stocks[1].rateOfReturn, 0.45, accuracy: 0.001)
    }

    static var allTests = [
        ("testPortfolioQuery", testPortfolioQuery),
    ]
}
