import Foundation

/// App state shown in the main window: a name to greet and a counter.
public final class CounterModel: ObservableObject {
    @Published public var name: String
    @Published public private(set) var count: Int

    public init(name: String = "", count: Int = 0) {
        self.name = name
        self.count = count
    }

    public var greeting: String {
        let trimmed = name.trimmingCharacters(in: .whitespacesAndNewlines)
        return trimmed.isEmpty ? "Hello, world!" : "Hello, \(trimmed)!"
    }

    public func increment() {
        count += 1
    }

    public func decrement() {
        count -= 1
    }

    public func reset() {
        count = 0
    }
}
