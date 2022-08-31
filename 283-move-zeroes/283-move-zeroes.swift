class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var tempArray : [Int] = []
        for num in nums {
            if num != 0 {
                tempArray.append(num)
            }
        }
        
        for num in nums {
            if num == 0 {
                tempArray.append(num)
            }
        }
        
        nums = tempArray
    }
}