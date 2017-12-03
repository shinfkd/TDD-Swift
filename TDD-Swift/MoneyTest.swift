//
//  MoneyTest.swift
//  TDD-Swift
//
//  Created by shinfkd on 2017/12/02.
//

import XCTest

class MoneyTest: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testMultiplication() {
        let five: Dollar = Dollar(5)
        var product: Dollar = five.times(2)
        XCTAssertEqual(10, product.amount)
        product = five.times(3)
        XCTAssertEqual(15, product.amount)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
