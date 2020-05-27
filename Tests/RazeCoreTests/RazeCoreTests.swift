import XCTest
@testable import RazeCore

final class RazeCoreTests: XCTestCase {
    func testColorRedEqual() {
        let color = RazeCore.colorFromHexString("#000000", alpha: 1)
        XCTAssertEqual(color, .black)
    }

    static var allTests = [
        ("testColorRedEqual", testColorRedEqual)
    ]
}
