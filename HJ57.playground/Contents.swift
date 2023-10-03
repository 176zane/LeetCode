
import Foundation

if let nStr1 = readLine(),let nStr2 = readLine() {
    let result = addTwoString(nStr1,nStr2)
    print(String(result.map{Character(String($0))}))
}
func addTwoString(_ nStr1:String,_ nStr2: String) -> [Int]{
    var numA = Array(nStr1).map{Int(String($0))!}
    var numB = Array(nStr2).map{Int(String($0))!}
    var step = 0
    var result = [Int]()
    while numA.last != nil || numB.last != nil || step != 0{
        let a = numA.popLast() ?? 0
        let b = numB.popLast() ?? 0
        var sum  = a + b + step
        step = sum / 10
        result.append(sum % 10)
    }
    return result.reversed()
}

