import Foundation

if let _ = readLine(), let heightStr = readLine() {
    var parts = heightStr.split(separator: " ")
    var heights = [Int]()
    for s in parts {
        heights.append(Int(s)!)
    }
    //设 dp[i] 表示以 nums[i] 为结尾的最长上升子序列的长度，为了保证元素单调递增肯定只能从 i 前面且末尾元素比 nums[i] 小的状态转移过来
    var dpL = Array(repeating: 1, count: heights.count)//i之前 左边最长字串
    var dpR = Array(repeating: 1, count: heights.count)
    for i in 0..<heights.count {
        for j in 0..<i {
            if heights[i] > heights[j] {
                dpL[i] = max(dpL[i], dpL[j] + 1)//i的值只能从j转移过来
            }
        }
    }
    for i in (0..<heights.count).reversed() {
        for j in (i+1..<heights.count).reversed() {
            if heights[i] > heights[j] {
                dpR[i] = max(dpR[i], dpR[j] + 1)
            }
        }
    }
    var dp = Array(repeating: 0, count: heights.count)
    var r = 0
    for i in 0..<heights.count {
        dp[i] = dpL[i] + dpR[i] - 1
        r = max(r,dp[i])
    }
    print(heights.count-r)
}


