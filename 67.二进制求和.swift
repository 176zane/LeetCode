/*
 * @lc app=leetcode.cn id=67 lang=swift
 *
 * [67] 二进制求和
 */

// @lc code=start
class Solution {
    func addBinary(_ a: String, _ b: String) -> String {
        var a = a, b = b
        while a.count < b.count {
            a = "0" + a
        }
        while a.count > b.count {
            b = "0" + b
        }
        
        var aArray = Array(a), bArray = Array(b)
        var step = 0
        var result = [Int]()
        for i in (0..<aArray.count).reversed() {
            var sum = step
            sum += (aArray[i]=="1" ? 1 : 0)
            sum += (bArray[i]=="1" ? 1 : 0)
            result.append(sum%2)
            step = sum/2
        }
        if step > 0 {
            result.append(1)
        }
        var s = ""
        for i in result.reversed() {
            s += String(i)
        }
        return s
    }
}
// @lc code=end

