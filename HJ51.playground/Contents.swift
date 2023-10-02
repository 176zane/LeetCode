import Foundation

while let nStr = readLine(),let arrayStr = readLine(), let kStr = readLine() {
    let n = Int(nStr)!
    let parts = arrayStr.split(separator: " ").map{Int($0)!}
    let k = Int(kStr)!
    if k <= n && n == parts.count {
        print(parts[n-k])
    }
    
}
