import Foundation

//状态转移方程不好想
if let str = readLine(){
    var parts = str.split(separator: " ").map{Int($0)!}
    let m = parts[0]
    let n = parts[1]
    print(getCount(m,n))
}
func getCount(_ m:Int,_ n:Int) -> Int {
    var dp = Array(repeating: Array(repeating: 0, count: n+1), count: m+1)
    //dp[i][j]的含义为对于i个苹果和j个盘子有多少种放置方案
    for i in 0...1 {
        for j in 0...n {
            dp[i][j] = 1//0个或者1个苹果 不管几个盘子都是1个方案
        }
    }
    for i in 0...m {
        dp[i][1] = 1//只有一个盘子
    }
    if m < 2 || n < 2 {
        return dp[m][n]
    }
    for i in 2...m {
        for j in 2...n {
            if i < j {
                dp[i][j] = dp[i][i]
            }else {
                dp[i][j] = dp[i-j][j]+dp[i][j-1]
            }
        }
    }
    return dp[m][n]
}


