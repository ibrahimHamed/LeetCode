class Solution {
    func validMountainArray(_ arr: [Int]) -> Bool {
        if arr.count < 3 { return false }
        // [0,3,2,1]
        // if arr[0] > arr[1] { return false }
        var index = 0
        while index < arr.count - 1 && arr[index] < arr[index + 1]  {
            index += 1
        }
        
        if index == 0 || index == (arr.count - 1) { return  false }
        3
        while index < arr.count - 1 && arr[index] > arr[index + 1] {
            index += 1
        }
        
        return index == (arr.count - 1)
        
        // [1,2,3,4,3,2,0]
        // [1 , 2, , 2 , 3 , 0]
        
        
//         for i in 0..<arr.count - 1 {
//             if arr[i] == arr[i+1] { return false}
//         }
//         var flag = false
//         var indexOfTop = 0
//         for i in 0..<arr.count - 1 {
//             if arr[i] > arr[i+1] {
//                 indexOfTop = i
//                 break
//             } else {
//                 flag = false
//             }
//         }
        
//         for i in indexOfTop..<arr.count - 1 {
//             if arr[i] > arr[i + 1] {
//                 flag = true
//             } else {
//                 flag = false
//                 break
//             }
//         }
//         return flag
        
    }
}