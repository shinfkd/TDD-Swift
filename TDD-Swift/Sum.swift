//
//  Sum.swift
//  TDD-Swift
//
//  Created by shinfkd on 2017/12/14.
//

import Foundation
class Sum: Expression {
    var augend: Money
    var addend: Money

    init(augend: Money, addend: Money) {
        self.augend = augend
        self.addend = addend
    }

    func reduce(bank: Bank, to: String) -> Money {
        let amount: Int = augend.amount + addend.amount
        return Money(amount, currency: to)
    }
}
