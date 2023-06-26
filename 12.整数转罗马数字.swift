/*
 * @lc app=leetcode.cn id=12 lang=swift
 *
 * [12] 整数转罗马数字
 */

// @lc code=start
class Solution {
    func intToRoman(_ num: Int) -> String {
        let nums = [1000,900,500,400,100,90,50,40,10,9,5,4,1]
        let rome = ["M","CM","D","CD","C","XC","L","XL","X","IX","V","IV","I"]
        var result = ""
        var num = num
        for i in 0..<nums.count {
            while num >= nums[i] {
                result += rome[i]
                num -= nums[i]
            }
        }
        return result
    }
}

// @lc code=end

