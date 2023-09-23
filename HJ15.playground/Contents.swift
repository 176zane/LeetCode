import Foundation

if let s = readLine() {
    var n = Int(s)!
    var a = 0
    while n != 0 {
        if n & 1 == 1{
            a += 1
        }
        n = n >> 1
        
    }
    print(a)
}
