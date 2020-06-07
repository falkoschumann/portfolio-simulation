public protocol CommandStatus {}

public struct Success : CommandStatus {
    public init() {}
}

public struct Failure : CommandStatus {
    public let errorMessage: String

    public init(_ errorMessage: String) {
        self.errorMessage = errorMessage
    }
}
