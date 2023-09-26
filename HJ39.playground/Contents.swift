import Foundation

if let mask = readLine(),let ip1 = readLine(),let ip2 = readLine(){
    if isValidIp(ip1)&&isValidIp(ip2)&&isValidMask(mask){
        let bip1 = getIpBinaryString(ip1)
        let bip2 = getIpBinaryString(ip2)
        let mask = getIpBinaryString(mask)
        
        let r1 = andProcess(bip1,mask)
        let r2 = andProcess(bip2,mask)
        if r1 == r2 {
            print(0)
        }else {
            print(2)
        }
        
    }else {
        print(1)
    }
}
func andProcess(_ ip: String,_ mask: String) -> String {
    let ipArray = Array(ip)
    let maskArray = Array(mask)
    var s = String()
    for i in 0..<ip.count {
        let j = Int(String(ipArray[i]))!
        let k = Int(String(maskArray[i]))!
        let n = j & k
        s.append(String(n))
    }
    return s
}
  
func getIpBinaryString(_ ip:String) -> String {
    let parts = ip.components(separatedBy: ".")
    var binary = String()
    for i in parts {
        let n = Int(i)!
        var b = String(n, radix: 2)
        while b.count < 8 {
            b.insert("0", at: b.startIndex)
        }
        binary.append(b)
    }
    return binary
}

func isValidIp(_ ip:String) -> Bool {
    let parts = ip.components(separatedBy: ".")
    if parts.count != 4 {return false}
    for i in parts {
        if let n = Int(i) {
            if n < 0 || n > 255 {
                return false
            }
        }else {
            return false
        }
    }
    return true
}
func isValidMask(_ mask: String) -> Bool {
    if !isValidIp(mask) {
        return false
    }
    let parts = mask.components(separatedBy: ".")
    var binary = String()
    for i in parts {
        let n = Int(i)!
        var b = String(n, radix: 2)
        while b.count < 8 {
            b.insert("0", at: b.startIndex)
        }
        binary.append(b)
    }
    return binary.contains("0")&&binary.contains("1")&&(!binary.contains("01"))
}
