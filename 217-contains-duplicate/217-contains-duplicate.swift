class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        let numsSet = Set(nums.map{ $0 })
        if nums.count > numsSet.count {
            return true
        } else {
            return false
        }
    }
}