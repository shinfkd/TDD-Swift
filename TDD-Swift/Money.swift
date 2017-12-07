//
//  Money.swift
//  TDD-Swift
//
//  Created by shinfkd on 2017/12/08.
//

import Foundation
class Money: Equatable {
    var amount: Int

    init(_ amount: Int) {
        self.amount = amount
    }

    static func == (lhs: Money, rhs: Money) -> Bool {
        return lhs.amount == rhs.amount
    }
}
