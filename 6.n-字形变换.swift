/*
 * @lc app=leetcode.cn id=6 lang=swift
 *
 * [6] N 字形变换
 */

// @lc code=start
class Solution {
    func convert(_ s: String, _ numRows: Int) -> String {
        if numRows == 1 {return s}
        var array = Array(repeating: Array<Character>(), count: numRows)
        var resultS = String()
        
        var i = 0
        var step = 1
        for c in s {
            array[i].append(c)
            i = i + step
            if i == numRows {
                step = -1
                i = i - 2
            }
            if i == -1 {
                step = 1
                i = i + 2
            }
        }
        
        for charArray in array {
            resultS.append(contentsOf: String(charArray))
        }
        return resultS
    }
}
// @lc code=end

