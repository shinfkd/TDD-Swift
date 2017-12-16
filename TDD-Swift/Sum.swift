//
//  Sum.swift
//  TDD-Swift
//
//  Created by shinfkd on 2017/12/14.
//

import Foundation
class Sum: Expression {
    var augend: Expression
    var addend: Expression

    init(augend: Expression, addend: Expression) {
        self.augend = augend
        self.addend = addend
    }

    func plus(_ addend: Expression) -> Expression {
        return Money.dollar(1)
    }

    func reduce(bank: Bank, to: String) -> Money {
        let amount: Int = augend.reduce(bank: bank, to: to).amount + addend.reduce(bank: bank, to: to).amount
        return Money(amount, currency: to)
    }
}
