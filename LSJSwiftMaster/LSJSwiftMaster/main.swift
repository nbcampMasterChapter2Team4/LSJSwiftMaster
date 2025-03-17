//
//  main.swift
//  LSJSwiftMaster
//
//  Created by yimkeul on 3/17/25.
//

import Foundation

let sum: (Int,Int) -> String = { a, b in
    return "두 수의 합은 \(a + b)입니다"
}

print(sum(1, 2))


func calculate(sumClousre: (Int,Int) -> String) -> Void {
    print(sum(3,4))
}

calculate(sumClousre: sum)
