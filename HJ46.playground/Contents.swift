import Foundation

if let str = readLine(), let nStr = readLine() {
    var str = str
    let n = Int(nStr)!
    if n <= str.count {
        let subStr = str[str.startIndex...str.index(str.startIndex, offsetBy:n-1)]
        print(subStr)
    }
}
