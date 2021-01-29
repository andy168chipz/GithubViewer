//
//  GithubViewerTests.swift
//  GithubViewerTests
//
//  Created by Andy Chou on 1/28/21.
//

import XCTest
@testable import GithubViewer


class GithubViewerTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testUtilDate() {
        XCTAssert(true)
        let date = ISO8601DateFormatter().date(from: "2021-01-29T20:34:39Z")!
        let dateString = Utility.timeFormatter(date: date)
        XCTAssertTrue(dateString == "Friday")
        
    }

}
