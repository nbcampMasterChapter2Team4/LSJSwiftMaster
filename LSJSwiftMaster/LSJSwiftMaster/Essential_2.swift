//
//  Essential_2.swift
//  LSJSwiftMaster
//
//  Created by yimkeul on 3/17/25.
//

import Foundation

func Essential_2() {
    let numbers = [1, 2, 3, 4, 5]
    var result = [String]()

    func Q1() {
        result = numbers.map { String($0) }
        print(result)
    }
    Q1()
    
    
    func Q2(for input: [Int]) -> [String] {
        return input.filter { $0 % 2 == 0 }.map { String($0) }
    }
    
    let sampleInputForQ2: [Int] = [1,2,3,4,5,6,7,8,9,10]
    
    print(Q2(for: sampleInputForQ2), type(of: Q2(for: sampleInputForQ2)))

    func Q3() {
        func myMap(_ array: [Int], _ changer: (Int) -> String) -> [String] {
            return array.map { changer($0) }
        }
        let result = myMap([1, 2, 3, 4, 5]) {
            String($0)
        }
        print(result)
    }
    Q3()
}
