//
//  UIColor.swift
//  SimpleProfile
//
//  Created by IvánMS on 07/03/18.
//  Copyright © 2018 ivanMS. All rights reserved.
//

import UIKit
extension UIColor{
    func a() -> UIColor{
        return UIColor(named: "a")!
    }
    func b() -> UIColor{
        return UIColor(named: "b")!
    }
    func c() -> UIColor{
        return UIColor(named: "c")!
    }
    func d() -> UIColor{
        return UIColor(named: "d")!
    }
    func e() -> UIColor{
        return UIColor(named: "e")!
    }
    func f() -> UIColor{
        return UIColor(named: "f")!
    }
    func g() -> UIColor{
        return UIColor(named: "g")!
    }
}

extension MutableCollection {
    /// Shuffles the contents of this collection.
    mutating func shuffle() {
        let c = count
        guard c > 1 else { return }
        
        for (firstUnshuffled, unshuffledCount) in zip(indices, stride(from: c, to: 1, by: -1)) {
            let d: IndexDistance = numericCast(arc4random_uniform(numericCast(unshuffledCount)))
            let i = index(firstUnshuffled, offsetBy: d)
            swapAt(firstUnshuffled, i)
        }
    }
}

extension Sequence {
    /// Returns an array with the contents of this sequence, shuffled.
    func shuffled() -> [Element] {
        var result = Array(self)
        result.shuffle()
        return result
    }
}
