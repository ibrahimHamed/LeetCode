class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var tempArray = nums1.filter({$0 == 0})
        for i in 0..<n {
            tempArray[i] = nums2[i]
        }
        nums1 = (nums1.filter({$0 != 0}) + tempArray).sorted()
    }
}