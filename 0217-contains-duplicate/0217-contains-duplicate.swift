class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        return Array(Set(nums)).count != nums.count
    }
}