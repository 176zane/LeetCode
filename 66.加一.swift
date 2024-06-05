/*
 * @lc app=leetcode.cn id=66 lang=swift
 *
 * [66] 加一
 */

// @lc code=start

class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var r = [Int]()
        var step = 0
        var first = true
        for i in digits.reversed() {
            var n = 0
            if first {
                n = i + 1
                first = false
            }else {
                n = step + i
            }
            if n > 9 {
                step = 1
                n = 0
            }else {
                step = 0
            }
            r.insert(n, at: 0)
        }
        if step == 1 {
            r.insert(1, at: 0)
        }
        return r
    }
}

class Solution4 {
    func plusOne(_ digits: [Int]) -> [Int] {
        var result = [Int]()
        var add = true
        for num in digits.reversed() {
            if add {
                if num == 9 {
                    result.append(0)
                }else {
                    add = false
                    result.append(num+1)
                }
            }else {
                result.append(num)
            }
        }
        if add {result.append(1)}
        return result.reversed()
    }
}

class Solution2 {
    func plusOne(_ digits: [Int]) -> [Int] {
        var result = [Int]()
        var step = 0
        var first = true
        for num in digits.reversed() {
            var addOne = first ? 1 : 0
            result.append((num + step + addOne) % 10)
            step = (num + step + addOne) > 9 ? 1 : 0
            first = false
        }
        if step == 1 {result.append(1)}
        return result.reversed()
    }
}
// @lc code=end

