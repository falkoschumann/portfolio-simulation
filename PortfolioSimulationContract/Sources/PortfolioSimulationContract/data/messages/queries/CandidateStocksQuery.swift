public struct CandidateStocksQuery {
    public let pattern: String
}

public struct CandidateStocksQueryResult {
    public struct CandidateStock {
        public let name: String
        public let symbol: String
        public let currency: String
        public let price: Double
    }

    public let candidates: [CandidateStock]

    public init(candidates: [CandidateStock]) {
        self.candidates = candidates
    }
}
