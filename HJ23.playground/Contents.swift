import Foundation

if let str = readLine() {
    var dic = [Character:Int]()
    for c in str {
        if let n = dic[c] {
            dic[c] = n+1
        }else {
            dic[c] = 1
        }
    }
    
    var min = dic.values.min()
    var removeArray = [Character]()
    for (k,v) in dic {
        if v == min {
            removeArray.append(k)
        }
    }
    var s = String()
    
    for c in str {
        if !removeArray.contains(c) {
            s.append(c)
        }
    }
    print(s)
}


