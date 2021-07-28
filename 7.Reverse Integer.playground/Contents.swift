class Solution {
    func reverse(_ x: Int) -> Int {
        var x = x
        var result = 0
        
        while x / 10 != 0 {
            result = result * 10 + (x % 10) * 10
            x = x / 10
        }
        result += x
        if result > Int32.max || result < Int32.min {
            result = 0
        }
        return result
    }
}
