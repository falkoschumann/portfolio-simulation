import Foundation

public struct BuyStockCommand {
    public let stockName: String
    public let stockSymbol: String
    public let stockPriceCurrency: String
    public let qty: Int
    public let stockPrice: String
    public let bought: Date
}
