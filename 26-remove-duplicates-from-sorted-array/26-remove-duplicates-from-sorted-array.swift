class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        guard !nums.isEmpty else { return 0 }
        nums = Array(Set(nums)).sorted()
        return nums.count
    }
}