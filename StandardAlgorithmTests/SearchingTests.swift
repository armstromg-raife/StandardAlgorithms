//
//  SearchingTests.swift
//  StandardAlgorithms
//
//  Created by Raife Armstrong on 23/11/23.
//

import XCTest

final class SearchingTests: XCTestCase {

    func testBinarySearchWithMultipalOrderdListsOfIntegers(){
        //arrange
        let searching = Searching()
        
        let testCases = [([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 7, 7),([1, 3, 5, 7, 9, 11, 13, 15], 9, 5),([1, 3, 5, 7, 9, 11, 13, 15], 1, 1),([1, 3, 5, 7, 9, 11, 13, 15], 15, 8)]
        //act
        for testCase in testCases{

            let actual = searching.binarySearch(testCase.0,testCase.1)
            XCTAssertEqual(actual, testCase.2)
        }
        //assert
    }
    
    func testLinearSearchWithMultipalListsOfIntegers(){
        //arrange
        let searching = Searching()
        //[([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 7, 7),([1, 3, 5, 7, 9, 11, 13, 15], 9, 5),([1, 3, 5, 7, 9, 11, 13, 15], 1, 1),([1, 3, 5, 7, 9, 11, 13, 15], 15, 8),([94, 73, 105, 17, 56, 112, 81, 25, 39, 42], 56,5),([25, 35, 10, 15, 50, 45, 5, 40, 20, 30], 35, 2),([512, 256, 128, 64, 2, 4, 8, 16, 1024, 32], 128, 3),([33, 110, 44, 77, 11, 99, 55, 22, 66, 88], 77, 4)]
        let testCases = [([1, 3, 5, 7, 9, 11, 13, 15], 9, 5),([94, 73, 105, 17, 56, 112, 81, 25, 39, 42], 56,5),([25, 35, 10, 15, 50, 45, 5, 40, 20, 30], 35, 2),([512, 256, 128, 64, 2, 4, 8, 16, 1024, 32], 128, 3)]
        //act
        for testCase in testCases{
            print(testCase)
            let actual = searching.binarySearch(testCase.0,testCase.1)
            XCTAssertEqual(actual, testCase.2)
        }
        //assert
    }
}
