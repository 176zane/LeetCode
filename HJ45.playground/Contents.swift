import Foundation

let _ = readLine()

while let str = readLine() {
    print(getMaxCount(str))
}

func getMaxCount(_ str:String) -> Int {
    var dic = [Character:Int]()
    for c in str {
        if let n = dic[c] {
            dic[c] = n+1
        }else {
            dic[c] = 1
        }
    }
    
    var values = dic.values.sorted(by: >)
    
    var sum = 0
    var max = 26
    for v in values {
        sum += max * v
        max -= 1
    }
    
//    var array =  dic.sorted { $0.value > $1.value}
//    var sum = 0
//    var max = 26
//    for (_,v) in array {
//        sum += max * v
//        max -= 1
//    }
    return sum
}
