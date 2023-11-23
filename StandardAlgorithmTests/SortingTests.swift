//
//  SortingTests.swift
//  StandardAlgorithmTests
//
//  Created by Armstrong, Raife (SPH) on 10/11/2023.
//

import XCTest

final class SortingTests: XCTestCase {
    
    func testBubbleSortWithManyShuffledArraysOfIntegersRerurnsArrayInAscendingOrder(){
        //arrange
        let sorting = Sorting()
        
        let testCases = [(data:[5,1,3,7,4],expected: [1,3,4,5,7]),(data:[2,1,3,7,4],expected: [1,2,3,4,7]),(data:[7,4],expected: [4,7])]
        //act
        for testCase in testCases{
            print(testCase)
            let actual = sorting.bubbleSort(testCase.data)
            XCTAssertEqual(actual, testCase.expected)
        }
        //assert
    }
    
    func testCheckingWeatherTheMergeSortReturnsTheSortedListFromGreatestToSmallest() {
            //arrange
        let sorting = Sorting()
        
        let testCases = [(data:[38, 27, 43, 3, 9, 82, 10], expected:[3, 9, 10, 27, 38, 43, 82]),(data:[5, 2, 7, 1, 8, 4, 3, 6], expected:[1, 2, 3, 4, 5, 6, 7, 8]),(data:[9, 1, 5, 3, 7, 2, 8, 4, 6, 10], expected:[1, 2, 3, 4, 5, 6, 7, 8, 9, 10])]
                //act


            for testCase in testCases {
                let result: ([Int]) = sorting.mergeSort(testCase.data)
                XCTAssertEqual(result, testCase.expected)
            }
        }


    func testMergeSortSpeed()  {
        
        self.measure {
            let sorting = Sorting()
            
            let testCases = [(data:[38, 27, 43, 3, 9, 82, 10], expected:[3, 9, 10, 27, 38, 43, 82]),(data:[5, 2, 7, 1, 8, 4, 3, 6], expected:[1, 2, 3, 4, 5, 6, 7, 8]),(data:[9, 1, 5, 3, 7, 2, 8, 4, 6, 10], expected:[1, 2, 3, 4, 5, 6, 7, 8, 9, 10])]
            //act

            for testCase in testCases {
                _ = sorting.mergeSort(testCase.data)
            }
        }
    }

    
    func testQuickSortWithManyShuffledArraysOfIntegersRerurnsArrayInAscendingOrder(){
        //arrange
        let sorting = Sorting()
        
        let testCases = [(data:[5,1,3,7,4],expected: [1,3,4,5,7]),(data:[2,1,3,7,4],expected: [1,2,3,4,7]),(data:[7,4],expected: [4,7])]
        //act
        for testCase in testCases{
            let actual = sorting.quickSort(testCase.data)
            XCTAssertEqual(actual, testCase.expected)
        }
        //assert
    }
}
