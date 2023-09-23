import Foundation

var dic :[Int:Int] = [:]

while let str = readLine() {
    let part = str.split(separator: " ")
    if part.count > 1 {
        var index = Int(part[0])!
        var value = Int(part[1])!
        if let old = dic[index] {
            dic[index] = old + value
        }else {
            dic[index] = value
        }
    }
}

var keys = dic.keys.sorted()
for key in keys {
    print("\(key) \(dic[key]!)")
}

