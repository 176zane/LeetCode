import Foundation

if let aStr = readLine(),let bStr = readLine() {
    print(getMaxSub(bStr,aStr))
}
func getMaxSub(_ s1:String,_ s2:String) -> String {
    var s = String(),l = String()
    if s1.count < s2.count {
        s = s1
        l = s2
    }else {
        s = s2
        l = s1
    }
    let sA = Array(s)
    var maxSub = ""
    for i in 0..<s.count {
        for j in (i..<s.count).reversed() {
            let sub = String(sA[i...j])
            if l.contains(sub) {
                if sub.count > maxSub.count {
                    maxSub = sub
                }
                break
            }
        }
    }
    return maxSub
}
