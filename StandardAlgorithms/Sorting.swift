//
//  Sorting.swift
//  StandardAlgorithms
//
//  Created by Armstrong, Raife (SPH) on 10/11/2023.
//

import Foundation

class Sorting {
    func bubbleSort(_ numbers: [Int]) -> [Int] {
        var array=numbers
        var haveSwaped=true
        while haveSwaped{
            haveSwaped=false
            for i in 1..<array.count{
                if array[i-1]>array[i]{
                    array.swapAt(i-1,i)
                    haveSwaped=true
                }
            }
        }
    }
        
    func mergeSort(_ array : [Int]) -> [Int]{
        if array.count>1{
            let mid=array.count/2
            let leftArray: ([Int]) = Array(array[0..<mid])
            let rightArray: ([Int]) = Array(array[mid..<array.count])
            
            let sortedLeft = mergeSort(leftArray)
            let sortedRight = mergeSort(rightArray)
            
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
            output.append(contentsOf: quickSort(left))
        }else{
            output.append(contentsOf:  left)
        }
        output.append(pivot)
        if right.count>1{
            output.append(contentsOf: quickSort(right))
        }else{
            output.append(contentsOf:  right)
        }
        
        return output
    }
}
