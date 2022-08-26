class Solution {
    func validMountainArray(_ arr: [Int]) -> Bool {
        if arr.count < 3 { return false }
        if arr[0] > arr[1] { return false }
        for i in 0..<arr.count - 1 {
            if arr[i] == arr[i+1] { return false}
        }
        var flag = false
        var indexOfTop = 0
        for i in 0..<arr.count - 1 {
            if arr[i] > arr[i+1] {
                indexOfTop = i
                break
            } else {
                flag = false
            }
        }
        
        for i in indexOfTop..<arr.count - 1 {
            if arr[i] > arr[i + 1] {
                flag = true
            } else {
                flag = false
                break
            }
        }
        return flag
        
    }
}