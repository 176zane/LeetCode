/*
 * @lc app=leetcode.cn id=28 lang=swift
 *
 * [28] 找出字符串中第一个匹配项的下标
 */

// @lc code=start

//查看kmp解法
//https://leetcode.cn/problems/find-the-index-of-the-first-occurrence-in-a-string/solutions/575568/shua-chuan-lc-shuang-bai-po-su-jie-fa-km-tb86/

class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        var strArray = Array(haystack)
        var k = 0
        while strArray.count >= needle.count {
            if String(strArray).hasPrefix(needle) {
                return k
            }
            strArray.removeFirst()
            k += 1
        }
        return -1
    }
}
// @lc code=end

