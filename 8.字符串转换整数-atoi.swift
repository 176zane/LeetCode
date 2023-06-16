/*
 * @lc app=leetcode.cn id=8 lang=swift
 *
 * [8] 字符串转换整数 (atoi)
 */

// @lc code=start
class Solution {
    func myAtoi(_ s: String) -> Int {
        var result : Int64 = 0
        var processing = false
        var negtive = false
        for c in s {
            if processing  {
                
                if let num = c.wholeNumberValue {
                    result = result * 10 + Int64(num)
                    if result > Int32.max {
                        break
                    }
                }else {
                    break;
                }
            }else {
                if c == " " {
                    continue
                }
                if c == "-" {
                    negtive = true
                    processing = true
                    continue
                }
                if c == "+" {
                    processing = true
                    continue
                }
                if let num = c.wholeNumberValue {
                    result = Int64(num)
                    processing = true
                }else {
                    break
                }
            }
        }
        if negtive {
            result = result * (-1)
        }
        if result > Int32.max {
            result = (Int64)(Int32.max)
        }
        if result < Int32.min {
            result = (Int64)(Int32.min)
        }
        let a = (Int)(result)
        return a
    }
}
// @lc code=end

