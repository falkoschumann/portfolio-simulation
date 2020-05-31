public protocol CommandStatus {}

public struct Success : CommandStatus {
    public init() {}
}

public struct Failure : CommandStatus {
    public init(_ errorMessage: String) {
        self.errorMessage = errorMessage
    }

    public let errorMessage: String
}
