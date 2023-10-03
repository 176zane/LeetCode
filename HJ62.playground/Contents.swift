import Foundation

while let nStr = readLine() {
    let n = Int(nStr)!
    let binaryS = String(n, radix: 2)
    var oneNum = 0
    for c in binaryS {
        if c == "1"{
            oneNum += 1
        }
    }
    print(oneNum)
}


