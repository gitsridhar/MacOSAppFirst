import AppCore
import XCTest

final class CounterModelTests: XCTestCase {
    func testGreetingDefaultsToWorld() {
        XCTAssertEqual(CounterModel().greeting, "Hello, world!")
        XCTAssertEqual(CounterModel(name: "   ").greeting, "Hello, world!")
    }

    func testGreetingUsesTrimmedName() {
        XCTAssertEqual(CounterModel(name: " Ada ").greeting, "Hello, Ada!")
    }

    func testCounting() {
        let model = CounterModel()
        model.increment()
        model.increment()
        model.decrement()
        XCTAssertEqual(model.count, 1)
        model.reset()
        XCTAssertEqual(model.count, 0)
    }
}
