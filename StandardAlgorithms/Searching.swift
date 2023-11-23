//
//  Searching.swift
//  StandardAlgorithms
//
//  Created by Raife Armstrong on 23/11/23.
//

import Foundation

class Searching {
    
    func binarySearch(_ array:[Int],_ searchFor: Int) -> Int? {
        var arrayStart = 0
        var arrayEnd = array.count
        let loop = log2(Double(array.count))
        for _ in 0...Int(loop){
            let middle = arrayStart+(arrayEnd-arrayStart)/2

            if array[middle] == searchFor {
                return (middle+1)
            } else if array[middle] < searchFor {
                arrayStart = middle + 1
            } else {
                arrayEnd = middle - 1
            }
        }
        return nil
    }
    
    func linearSearch(_ array: [Int],_ target: Int) -> Int? {
        for (index, number) in array.enumerated() {
            print(number)
            print(target)
            if number == target {
                return (index+1)
            }
        }
        return nil
    }
}

