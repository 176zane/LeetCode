
import Foundation

if let nStr = readLine() {
    let n = Int(nStr)!
    print(getNum(n))
}

func getNum(_ n:Int) -> Int{
    var num = 0
    
    for i in 1...n {
        var array = [Int]()
        for j in 1..<i {
            if i % j == 0 {
                array.append(j)
            }
        }
        if array.reduce(0, { $0 + $1 }) == i {
            num += 1
        }
    }
    return num
}
