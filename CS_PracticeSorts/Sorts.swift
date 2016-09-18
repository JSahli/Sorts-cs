//
//  Sorts.swift
//  CS_PracticeSorts
//
//  Created by Jesse Sahli on 8/28/16.
//  Copyright © 2016 sahlitude. All rights reserved.
//

import Foundation

class Sort {

    
    
static func insertionSort(array: [Int]) -> [Int] {
    //check that the array is greater than one and needs sorting
    
    let startTime = NSDate()
    guard array.count > 1 else { return array }
    
    //make a copy to sort
    var sortArray = array
    
    for i in 1..<sortArray.count {
        var y = i
        let temp = sortArray[y]
        
        //check if the element is less thant the one before it
        while y > 0 && temp < sortArray[y - 1] {
            sortArray[y] = sortArray[y - 1]
            y -= 1
        }
        sortArray[y] = temp
    }
    
    let finishTime = NSDate()
    let totalTime = finishTime.timeIntervalSinceDate(startTime)
    print("Execution Time = \(totalTime) seconds")
    return sortArray
}
    
    
    
static func selectionSort(array: [Int]) -> [Int] {
    
    guard array.count > 1 else { return array }
    var sortArray = array
    
    for i in 1..<sortArray.count {
        var minimumIndex = i - 1
        let unsortedPoint = i
        
        for j in unsortedPoint..<sortArray.count {
            if sortArray[j] < sortArray[minimumIndex] {
                minimumIndex = j
            }
        }
        let temp = sortArray[i - 1]
        sortArray[i - 1] = sortArray[minimumIndex]
        sortArray[minimumIndex] = temp
    }
        return sortArray
    }
}
