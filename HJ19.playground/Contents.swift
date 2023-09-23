import Foundation

while let str = readLine() {
    if str.count < 8 {
        print("NG")
        break
    }
    
    var countArray = [0,0,0,0]
    for c in str {
        if c.isNumber {
            countArray[0] = 1
        }else if c.isUppercase {
            countArray[1] = 1
        }else if c.isLowercase {
            countArray[2] = 1
        }else {
            countArray[3] = 1
        }
    }
    var sum = 0
    for i in countArray {
        sum += i
    }
    if sum < 3 {
        print("NG")
        break
    }
    if hasDuplicateSubstring(str) {
        print("NG")
        break
    }
    print("OK")
}

func hasDuplicateSubstring(_ str:String) ->Bool {
    var subSet = Set<String>()
    for i in 0..<str.count - 3{
        var s = str[str.index(str.startIndex, offsetBy: i)...str.index(str.startIndex, offsetBy: i+2)]
        if subSet.contains(String(s)) {
            return true
        }else {
            subSet.insert(String(s))
        }
    }
    return false
}

//hasDuplicateSubstring("~!+8+*fQO%&(2974)W9~D6X60T5%@1V1961*&+8+!046F#q#+S")
