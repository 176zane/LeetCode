/*
 * @lc app=leetcode.cn id=118 lang=swift
 *
 * [118] 杨辉三角
 */

// @lc code=start
class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
        var result = [[Int]]()
        var num = [1]
        result.append(num)
        for i in 1..<numRows {
            var num = Array(repeating: 0, count: i+1)
            num[0] = 1
            num[i] = 1
            for j in 1..<i {
                let iArray = result[i-1]
                num[j] = iArray[j-1] + iArray[j]
            }

            result.append(num)
        }
        return result
    }
}
// @lc code=end

