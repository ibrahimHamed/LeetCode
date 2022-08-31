class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        // var zerosArray : [Int] = []
        // var othersArray : [Int] = []
        // for i in 0..<nums.count {
        //     if nums[i] == 0 {
        //         zerosArray.append(0)
        //     } else {
        //         othersArray.append(nums[i])
        //     }
        // }
        // nums = othersArray + zerosArray
        
        
        // var p = 0
        // for i in 0..<nums.count {
        //     if nums[i] != 0 {
        //         nums.swapAt(p,i)
        //         p += 1
        //     }
        // }
        let beforeCount = nums.count
        nums = nums.filter{ $0 != 0 }
        
        for i in 0..<(beforeCount - nums.count) {
            nums.append(0)
        }
    }
}

// [0,1,0,3,12]