//
//  Pair.swift
//  TDD-Swift
//
//  Created by shinfkd on 2017/12/16.
//

import Foundation
class Pair: Equatable, Hashable {
    var hashValue: Int { return 0 }
    var from: String
    var to: String

    init(from: String, to: String) {
        self.from = from
        self.to = to
    }

    static func == (lhs: Pair, rhs: Pair) -> Bool {
        return lhs.from == rhs.from && lhs.to == rhs.to
    }
}
