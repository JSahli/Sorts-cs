//
//  main.swift
//  CS_PracticeSorts
//
//  Created by Jesse Sahli on 8/28/16.
//  Copyright © 2016 sahlitude. All rights reserved.
//

import Foundation

var myArray = [4, 5, 7, 8, 1, 3, 44, 34, 23, 12, 18, 9]

var mySortedArray = Sort.insertionSort(myArray)
print(mySortedArray)

var mySelSortedArray = Sort.selectionSort(myArray)
print(mySelSortedArray)