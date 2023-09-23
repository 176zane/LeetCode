import Foundation

var result = Array(repeating: 0, count: 7)

while let str = readLine() {
    if str.hasPrefix("0.")||str.hasPrefix("127."){continue}
    var parts = str.split(separator: "~")
    var ip = [Int]()
    if isMaskOk(String(parts[1]))&&isIpOk(String(parts[0]),&ip){
        var a = ip[0],b = ip[1]
        if a >= 0 && a <= 126 {
            result[0] += 1
            if a == 10 {
                result[6] += 1
            }
        }
        if a >= 128 && a <= 191 {
            result[1] += 1
            if a == 172 && b >= 16 && b <= 31 {
                result[6] += 1
            }
        }
        if a >= 192 && a <= 223 {
            result[2] += 1
            if a == 192 && b == 168{
                result[6] += 1
            }
        }
        if a >= 224 && a <= 239 {
            result[3] += 1
        }
        if a >= 240 && a <= 255 {
            result[4] += 1
        }
        
    }else {
        result[5] += 1
    }
}
for i in result {
    print(i,terminator:" ")
}

func isIpOk(_ str:String,_ numArray: inout [Int]) ->Bool {
    var part = str.split(separator: ".")
    if part.count != 4 {return false}
    for s in part {
        if let n = Int(s){
            if n >= 0 && n <= 255 {
                numArray.append(n)
            }else {
                return false
            }
        }else {
            return false
        }
    }
    return true
}
func isMaskOk(_ str:String) ->Bool {
    var part = str.split(separator: ".")
    if part.count != 4 {return false}
    var numArray = [Int]()
    for s in part {
        if let n = Int(s){
            if n >= 0 && n <= 255 {
                numArray.append(n)
            }else {
                return false
            }
        }else {
            return false
        }
    }
    
    var maskB = String()
    for i in numArray {
        var s = String(i,radix: 2)
        maskB += s
    }
    if maskB.contains("01"){return false}
    return maskB.contains("0")&&maskB.contains("1")
}
