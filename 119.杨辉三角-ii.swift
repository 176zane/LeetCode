/*
 * @lc app=leetcode.cn id=119 lang=swift
 *
 * [119] 杨辉三角 II
 */

// @lc code=start
class Solution {
    func getRow(_ rowIndex: Int) -> [Int] {
        var result = [[Int]]()
        var num = [1]
        result.append(num)
        for i in 1..<rowIndex+1 {
            var num = Array(repeating: 0, count: i+1)
            num[0] = 1
            num[i] = 1
            for j in 1..<i {
                let iArray = result[i-1]
                num[j] = iArray[j-1] + iArray[j]
            }

            result.append(num)
        }
        return result.last!
    }
}
// @lc code=end

