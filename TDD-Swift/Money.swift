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

    // 書籍では抽象クラスにして抽象メソッド化しているが、SwiftでProtocol使った似た表現で良いのが浮かばなかったため一旦下記。
    func times(_ multiplier: Int) -> Money {
        return Money(amount * multiplier)
    }

    static func == (lhs: Money, rhs: Money) -> Bool {
        return lhs.amount == rhs.amount && String(describing: type(of: lhs)) == String(describing: type(of: rhs))
    }

    static func dollar(_ amount: Int) -> Money {
        return Dollar(amount)
    }

    static func franc(_ amount: Int) -> Money {
        return Franc(amount)
    }
}
