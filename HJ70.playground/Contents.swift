import Foundation

var n = 0
var count = 0
var dic = [Character:[Int]]()
var processStr = String()
if let nStr = readLine() {
    n = Int(nStr)!
}

while let str = readLine() {
    if count < n {
        
        let parts = str.split(separator:" ").map{Int($0)!}
        let alphaNum = "A".unicodeScalars.first!.value + UInt32(count)
        let alpha = Character(UnicodeScalar(alphaNum)!)
        dic[alpha] = parts
        count += 1//count 在最后加1
    }else {
        processStr = str
    }
}

print(calculate(dic,processStr))

func calculate(_ dic: [Character:[Int]],_ str:String) -> Int {
    var result = 0
    var array = [[Int]]()
    for c in str {
        if c == ")" {
            let b = array.popLast()!
            let a = array.popLast()!
            let d = mulTwo(a, b, &result)
            array.append(d)
        }
        if c.isLetter {
            array.append(dic[c]!)
        }
    }
    return result
}
func mulTwo(_ a: [Int],_ b: [Int],_ num: inout Int) -> [Int] {
    num += a[0]*a[1]*b[1]
    return [a[0],b[1]]
}
