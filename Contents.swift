// MARK - Two Sum

/**
 Escriba una función que, cuando se le pase una matriz y una suma objetivo, devuelva, de manera eficiente con respecto al tiempo utilizado,
 dos índices distintos de base cero de dos números cualesquiera cuya suma sea igual a la suma objetivo.  Si no hay dos números,
 la función debería devolver nil.
 Por ejemplo, findTwoSum([3,1,5,7,5,9], 10) debería devolver una matriz unidimensional con dos elementos y contener cualquiera de
 los siguientes pares de índices:

 1. 0 y 3 (o 3 y 0) como 3 + 7 = 10
 2. 1 y 5 (o 5 y 1) como 1 + 9 = 10
 3. 2 y 4 (o 4 y 2) como 5 + 5 = 10
 */

/**
 Write a function that when passed an array and a target sum, return, efficiently with respect to time used, two distinct zero-based indices of any two
 of the numbers whose sum is equal to the target sum.  If there are no two numbers, the function should return nil.

 For example, findTwoSum([3,1,5,7,5,9], 10) should return a single dimensional array with two elements and contain any of the following pairs of indices:
 1. 0 and 3 (or 3 and 0) as 3 + 7 = 10
 2. 1 and 5 (or 5 and 1) as 1 + 9 = 10
 3. 2 and 4 (or 4 and 2) as 5 + 5 = 10
 */


public class TwoSum {
    public static func findTwoSum(numbers: [Int], sum: Int) -> [Int]? {
        var numberToIndex = [Int: Int]()

        for (index, number) in numbers.enumerated() {
            let complement = sum - number
            print("complement: \(complement)")
            print("numberToIndex[complement]: \(numberToIndex[complement])")
            print("index: \(index)")
            if let complementToIndex = numberToIndex[complement]{
                print("complementToIndex: \(complementToIndex)")
                return [complementToIndex, index]
            }
            numberToIndex[number] = index
            print(" numberToIndex[number]: \( numberToIndex[number])")

        }

        return nil
    }
}

dump(TwoSum.findTwoSum(numbers: [ 1, 3, 5, 7, 9 ], sum: 12))

