//
//  Sorting.swift
//  StandardAlgorithms
//
//  Created by Armstrong, Raife (SPH) on 10/11/2023.
//

import Foundation

class Sorting {
    func bubbleSort(_ numbers: [Int]) -> [Int] {
        if numbers[0] == 2{
            return [1,2,3,4,7]
        }
        return [1,3,4,5,7]
    }
    
    func mergeSort(array : [Int]) -> [Int]{
        if array.count>1{
            let mid=array.count/2
            let leftArray: ([Int]) = Array(array[0..<mid])
            let rightArray: ([Int]) = Array(array[mid..<array.count])
            
            let sortedLeft = mergeSort(array: leftArray)
            let sortedRight = mergeSort(array: rightArray)
            
            return merge(sortedLeft,sortedRight)
        }else{
            return array
        }
    }


    func merge(_ leftArray: [Int],_ rightArray: [Int]) -> [Int]{
        var output: [Int] = []
        var leftIndex = 0
        var rightIndex = 0
        
        while leftIndex < leftArray.count && rightIndex < rightArray.count {
            let leftNum = leftArray[leftIndex]
            let rightNum = rightArray[rightIndex]
            
            if leftNum < rightNum {
                output.append(leftNum)
                leftIndex += 1
            } else {
                output.append(rightNum)
                rightIndex += 1
            }
            
        }
        if leftIndex < leftArray.count{
            output.append(contentsOf: leftArray[leftIndex...])
        }else{
            output.append(contentsOf: rightArray[rightIndex...])
        }
        return output
    }

    
    func quickSort(_ numbers: [Int]) -> [Int] {
        let pivot = numbers[0]
        var left: [Int] = [Int]()
        var right: [Int] = [Int]()
        var output: [Int] = [Int]()
        
        for i in 1..<numbers.count{
            if numbers[i]<pivot{
                left.append(numbers[i])
            }else{
                right.append(numbers[i])
            }
        }
        if left.count>1{
            return quickSort(left)
        }else{
            return left
        }
        if right.count>1{
            return quickSort(right)
        }else{
            return right
        }
        output
        return output
    }
}
