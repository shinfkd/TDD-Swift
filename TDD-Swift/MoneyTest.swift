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
        let five: Money = Money.dollar(5)
        XCTAssertEqual(Money.dollar(10), five.times(2))
        XCTAssertEqual(Money.dollar(15), five.times(3))
    }

    func testEquality() {
        XCTAssertEqual(Money.dollar(5), Money.dollar(5))
        XCTAssertNotEqual(Money.dollar(5), Money.dollar(6))
        XCTAssertNotEqual(Money.franc(5), Money.dollar(5))
    }

    func testCurrency() {
        XCTAssertEqual("USD", Money.dollar(1).currency)
        XCTAssertEqual("CHF", Money.franc(1).currency)
    }

    func testSimpleAddition() {
        let five: Money = Money.dollar(5)
        let sum: Expression = five.plus(five)
        let bank:Bank = Bank()
        let reduced = bank.reduce(source: sum, to: "USD")
        XCTAssertEqual(Money.dollar(10), reduced)
    }

    func testPlusReturnSum() {
        let five: Money = Money.dollar(5)
        let result: Expression = five.plus(five)
        let sum: Sum = result as! Sum
        XCTAssertEqual(five, sum.augend)
        XCTAssertEqual(five, sum.addend)
    }

    func testReduceSum() {
        let sum: Expression = Sum(augend: Money.dollar(3), addend: Money.dollar(4))
        let bank: Bank = Bank()
        let result: Money = bank.reduce(source: sum, to: "USD")
        XCTAssertEqual(Money.dollar(7), result)
    }

    func testReduceMoney() {
        let bank: Bank = Bank()
        let result: Money = bank.reduce(source: Money.dollar(1), to: "USD")
        XCTAssertEqual(Money.dollar(1), result)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
