//
//  Money.swift
//  TDD-Swift
//
//  Created by shinfkd on 2017/12/08.
//

import Foundation
class Money: Equatable, Expression {
    var amount: Int
    var currency: String
    var description: String {return String(amount) + " " + currency}

    init(_ amount: Int, currency: String) {
        self.amount = amount
        self.currency = currency
    }

    func times(_ multiplier: Int) -> Money {
        return Money(amount * multiplier, currency: currency)
    }

    func plus(_ addend: Money) -> Expression {
        return Sum(augend: self, addend: addend)
    }

    func reduce(bank: Bank, to: String) -> Money {
        let rate: Int = bank.rate(from: currency, to: to)
        return Money(amount / rate, currency: to)
    }

    static func == (lhs: Money, rhs: Money) -> Bool {
        return lhs.amount == rhs.amount && lhs.currency == rhs.currency
    }

    static func dollar(_ amount: Int) -> Money {
        return Money(amount, currency: "USD")
    }

    static func franc(_ amount: Int) -> Money {
        return Money(amount, currency: "CHF")
    }
}
