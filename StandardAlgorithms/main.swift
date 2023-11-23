//
//  main.swift
//  StandardAlgorithms
//
//  Created by Armstrong, Raife (SPH) on 07/11/2023.

//Outputs the name of each algorithm
//A brief description as to how the algorithm works
//Any preconditions (only applicable to binary search)
//It's Big O time and space complexity in best, average and worst case scenarios
//Invokes the algorithm on an example set of data, displaying the input and the output

import Foundation

print("""
sorting
1. bubble sort
loops through the list compairing two ajacent items then swaping them if the first is larger than the second it repeats untill it no longer swaps any items. best O(n) average O(n^2) space O(n)
2. merge sort
it splits the array into arrays of 1 item then mergers them back together comparring the arrays to sort the array. all O(log(n)) space O(n)
3. quick sort
splits the list then in two then places all the items larger then the midddle number to the right and all the smaller items to the left it then repeats for the left and the right untial it is sorted. space O(n)
4. insertion sort
bulds a sorted array in the unsorted array. best O(n) worst O(n) space O(n)
Searhing
5. binery search
needs a sorted array it goes to the middle of the array and checks to see if it is the number it is looking for weather it is larger or smaller then only looks at that part and repeats. best O(1) average O(log(n)) space O(n)
6. linear search
goes through each item one by one. best O(1) average O(n) space O(n)
""")
