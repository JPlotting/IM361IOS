//
//  AllNewsTests.swift
//  AllNewsTests
//
//  Created by Jakob Plotts on 4/10/19.
//  Copyright © 2019 Jakob Plotts. All rights reserved.
//

import XCTest
@testable import AllNews

class AllNewsTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let article = Article(title: "This is an article", author: "Jakob Plotts", date: Date(), body: "Some body text")
        XCTAssertEqual("This is an article",article.title)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
