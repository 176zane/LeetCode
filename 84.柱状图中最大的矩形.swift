/*
 * @lc app=leetcode.cn id=84 lang=swift
 *
 * [84] 柱状图中最大的矩形
 */

// @lc code=start
class Solution {
    func largestRectangleArea(_ heights: [Int]) -> Int {
        var array = [(-1,-1)]
        var maxArea = 0
        for (i,v) in heights.enumerated() {
            while array.last!.1 > v {
                var last = array.removeLast()
                var next = array.last
                maxArea = max(maxArea, last.1 * (i-next!.0-1))
            }
            array.append((i,v))
        }
        while array.count > 1 {
            var last = array.removeLast()
            var next = array.last
            maxArea = max(maxArea, last.1 * (heights.count-next!.0-1))
        }
        return maxArea
    }
}


//暴力解法 超出时间限制
class Solution3 {//枚举宽
    func largestRectangleArea(_ heights: [Int]) -> Int {
        var maxArea = 0
        for i in 0..<heights.count {
            var minH = heights[i]
            for j in i..<heights.count {
                minH = min(minH, heights[j])
                maxArea = max(maxArea, minH*(j-i+1))
            }
        }
        return maxArea
    }
}

//暴力解法 超出时间限制
class Solution2 {//枚举高
    func largestRectangleArea(_ heights: [Int]) -> Int {
        var maxArea = 0
        for i in 0..<heights.count {
            var j = i ,k = i
            while j >= 0 && heights[j] >= heights[i] {
                j -= 1
            }
            while k <= heights.count-1 && heights[k] >= heights[i] {
                k += 1
            }
            maxArea = max(maxArea, heights[i]*(k-j-1))
        }
        return maxArea
    }
}

// @lc code=end

