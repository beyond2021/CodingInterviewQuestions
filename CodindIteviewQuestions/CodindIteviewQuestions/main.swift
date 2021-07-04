//
//  main.swift
//  CodindIteviewQuestions
//
//  Created by KEEVIN MITCHELL on 7/3/21.
//

import Foundation

// ITERATIONS
func binary_gap(_ number: UInt) -> UInt {
    var max_gap: UInt = 0
    var current_gap: UInt = 0
    var n = number
    while n > 0 && n % 2 == 0 {
        n /= 2
    }
    while n > 0 {
        n /= 2
        
        if n % 2 == 1 {

            if current_gap > max_gap {
                max_gap = current_gap
            }
            current_gap = 0
        } else {
            
            current_gap += 1
        }
    }
    
    return max_gap
}
//print(binary_gap(1096))

//ARRAYS
func rotateSingleLeft(_ A : inout [Int], _ k: Int )  -> [Int] {
    
    let slice1 = Array(A[0..<k])
    let slice2 = Array(A[k..<(A.count )])
    
//    print(slice1)
//    print(slice2)
    
    return slice2 + slice1
}

var inputArr = [1, 2, 3, 4, 5]
//print(rotateSingleLeft(&inputArr, 4))

func oddOccurrancesNoDict(_ A:inout [Int]) -> Int {
    
    var result = 0
    for  i in A {
        result ^= i;
    }
    return result
//    Console.WriteLine(result); // 7
}
var oddArray = [ 9, 3, 9, 3, 9, 7, 9]
//print(oddOccurrancesNoDict(&oddArray))


