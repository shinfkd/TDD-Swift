//
//  Franc.swift
//  TDD-Swift
//
//  Created by shinfkd on 2017/12/06.
//

import Foundation
class Franc: Equatable {
    private var amount: Int

    init(_ amount: Int) {
        self.amount = amount
    }

    func times(_ multiplier: Int) -> Franc {
        return Franc(amount * multiplier)
    }

    static func == (lhs: Franc, rhs: Franc) -> Bool {
        return lhs.amount == rhs.amount
    }
}
