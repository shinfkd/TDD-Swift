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
        XCTAssertEqual(Dollar(10), five.times(2))
        XCTAssertEqual(Dollar(15), five.times(3))
    }

    func testEquality() {
        XCTAssertEqual(Dollar(5), Dollar(5))
        XCTAssertNotEqual(Dollar(5), Dollar(6))
        XCTAssertEqual(Franc(5), Franc(5))
        XCTAssertNotEqual(Franc(5), Franc(6))
    }

    func testFrancMultiplication() {
        let five: Franc = Franc(5)
        XCTAssertEqual(Franc(10), five.times(2))
        XCTAssertEqual(Franc(15), five.times(3))
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
