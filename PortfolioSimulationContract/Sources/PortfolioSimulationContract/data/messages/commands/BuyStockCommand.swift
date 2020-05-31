import Foundation

public struct BuyStockCommand {
    public let stockName: String
    public let stockSymbol: String
    public let stockPriceCurrency: String
    public let quantity: Int
    public let stockPrice: String
    public let bought: Date
}
