import Foundation

import PortfolioSimulationContract

class PortfolioRepository: PortfolioRepositoryProtocol {
    let filePath: String

    init(filePath: String = "portfolio.csv") {
        self.filePath = filePath
    }

    func load() -> Portfolio {
        let fm = FileManager.default
        guard fm.fileExists(atPath: filePath) else {
            return Portfolio()
        }

        let lines: [String]
        do {
            lines = try String(contentsOfFile: filePath).components(separatedBy: "\r\n")
        } catch {
            return Portfolio()
        }
        guard lines.count > 0 else {
            return Portfolio()
        }

        let skipHeader = lines[0].starts(with: "Name") ? 1 : 0
        // TODO: Not implemented yet
        return Portfolio()
    }

    func store(_ portfolio: Portfolio) {
        // TODO: Not implemented yet
    }
}
