import Foundation

if let nStr = readLine(){
    var n = Int(nStr)!
    var dp = Array(repeating: 0, count: n)
    //dp[i]表示第i个月的兔子总数
    //第i个月的总数等于前一个月的总数加这个月新生出来的
    dp[0] = 1
    dp[1] = 1
    for i in 2..<n {
        dp[i] = dp[i-1] + dp[i-2]
    }
    print(dp[n-1])
    
}

