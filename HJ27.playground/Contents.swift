import Foundation

if let str = readLine() {
    var parts = str.split(separator: " ")
    var k = Int(parts.removeLast())!
    var x = String(parts.removeLast())
    parts.removeFirst()
    
    var broArray = [String]()
    for s in parts {
        if isBro(String(s),x) {
            broArray.append(String(s))
        }
    }
    print(broArray.count)
    if broArray.count >= k {
        broArray = broArray.sorted()
        print(broArray[k-1])
    }
    
}

func isBro(_ s1:String,_ s2:String) -> Bool {
    if s1 == s2 || s1.count != s2.count {
        return false
    }
    
    var s1Array = s1.sorted()
    var s2Array = s2.sorted()
    if s1Array != s2Array {
        return false
    }
    return true
}
