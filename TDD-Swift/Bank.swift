//
//  Bank.swift
//  TDD-Swift
//
//  Created by shinfkd on 2017/12/12.
//

import Foundation
class Bank {
    private var rates = [Pair: Int]()
    func reduce(source: Expression, to: String) -> Money {
        return source.reduce(bank: self, to: to)
    }

    func addRate(from: String, to: String, rate: Int) {
        rates[Pair(from: from, to: to)] = rate
    }

    func rate(from: String, to: String) -> Int {
        if from == to {
            return 1
        }

        return rates[Pair(from: from, to: to)]!
    }
}
