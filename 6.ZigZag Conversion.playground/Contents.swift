class Solution {
    func convert(_ s: String, _ numRows: Int) -> String {
        guard numRows > 1 else {
            return s
        }
        var strArr = Array(repeating: String(), count: numRows)
        var isDown = true
        var index = 0
        for char in s {
            var str = strArr[index]
            str.append(String(char))
            strArr[index] = str
            
            if isDown {
                index = index + 1
            }else {
                index = index - 1
            }
            
            if index == numRows {
                isDown = false
                index = index - 2
            }
            if index == -1 {
                isDown = true
                index = index + 2
            }
            
        }
        var result = String()
        for str in strArr {
            result += str
        }
        return result
    }
}

var s = Solution()
s.convert("PAYPALISHIRING", 3)
