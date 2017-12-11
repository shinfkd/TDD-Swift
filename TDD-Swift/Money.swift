//
//  Money.swift
//  TDD-Swift
//
//  Created by shinfkd on 2017/12/08.
//

import Foundation
class Money: Equatable {
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

    static func == (lhs: Money, rhs: Money) -> Bool {
        return lhs.amount == rhs.amount && lhs.currency == rhs.currency
    }

    static func dollar(_ amount: Int) -> Money {
        return Dollar(amount, currency: "USD")
    }

    static func franc(_ amount: Int) -> Money {
        return Franc(amount, currency: "CHF")
    }
}
