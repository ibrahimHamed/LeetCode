class Solution {
    func fizzBuzz(_ n: Int) -> [String] {
        var answer : [String] = []
        for i in 1...n {
            if (i % 3 == 0 && i % 5 == 0 ){
                answer.append("FizzBuzz")
            } else if ( i % 3 == 0) {
                answer.append("Fizz")
            } else if ( i % 5 == 0) {
                answer.append("Buzz")
            } else {
                answer.append("\(i)")
            }
        }
        return answer
    }
}