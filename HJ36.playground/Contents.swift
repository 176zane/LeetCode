import Foundation

if let keyStr = readLine(),let wordStr = readLine() {
    var keyArray = [Character]()
    for c in keyStr.lowercased() {
        if !keyArray.contains(c) {
            keyArray.append(c)
        }
    }
    let alphbet = "abcdefghijklmnopqrstuvwxyz"
    for c in alphbet {
        if !keyArray.contains(c) {
            keyArray.append(c)
        }
    }
    var dic = [Character:Character]()
    for (i,v) in alphbet.enumerated() {
        dic[v] = keyArray[i]
    }
    var result = String()
    for c in wordStr {
        if let v = dic[c] {
            result.append(v)
        }
    }
    print(result)
}

