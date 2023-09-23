import Foundation

while let str = readLine() {
    var n = Int(str)!
    if n == 0 {break}
    var bottle = allBottle(n)
    print(bottle)
}

func allBottle(_ num: Int) -> Int {
    var num = num
    var result = 0
    while num > 1 {//允许借
        num -= 3
        result += 1
        num += 1
    }
    return result
}
