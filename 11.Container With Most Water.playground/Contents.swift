class Solution {
    func maxArea(_ height: [Int]) -> Int {
        if height.count < 2 {
            fatalError("参数错误")
        }
        var result = 0
        var a = 0
        var b = height.count-1
        while a != b {
            let h = min(height[a], height[b])
            result = max(result, (b - a) * h)
            if height[a] <= height[b] {
                a += 1
            }else {
                b -= 1
            }
        }
        
        return result
    }
}
