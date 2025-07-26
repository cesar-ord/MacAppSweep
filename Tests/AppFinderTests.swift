import XCTest
@testable import MacUninstallerApp

final class AppFinderTests: XCTestCase {
    func testLoadAppsDoesNotThrow() async {
        let finder = AppFinder()
        finder.loadApps()
        XCTAssertTrue(true) // placeholder assertion
    }
}
