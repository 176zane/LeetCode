/*
 * @lc app=leetcode.cn id=6 lang=swift
 *
 * [6] Z 字形变换
 */

// @lc code=start
class Solution {
    func convert(_ s: String, _ numRows: Int) -> String {
        if numRows == 1 {
            return s
        }
        var r = String()
        var sA = Array(repeating: [Character](), count: numRows)
        var i = 0, down = true
        for c in s {
            sA[i].append(c)
            if down {
                i += 1
            }else {
                i -= 1
            }
            if i == numRows {
                i -= 2
                down = false
            }
            if i == -1 {
                i += 2
                down = true
            }
        }
        for array in sA {
            r.append(String(array))
        }
        return r
    }
}

// @lc code=end

