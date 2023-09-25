import Foundation

if let ipStr = readLine(),let valueStr = readLine() {
    print(ipToValue(ipStr))
    print(ValueToIp(valueStr))
}

func ipToValue(_ ip: String) -> String {
    var ipArray = ip.components(separatedBy: ".")
    var bStr = String()
    for i in ipArray {
        let n = Int(i)!
        var binaryValue = String(n, radix: 2)
        while binaryValue.count < 8 {
            binaryValue.insert("0", at: binaryValue.startIndex)
        }
        bStr.append(binaryValue)
    }
    var num = 0
    for i in bStr {
        let n = Int(String(i))!
        num = num * 2 + n
    }
    return String(num)
}
func ValueToIp(_ ip: String) -> String {
    var binaryValue = String(Int(ip)!,radix: 2)
    while binaryValue.count % 8 != 0 {
        binaryValue.insert("0", at: binaryValue.startIndex)
    }
    var binaryArray = Array(binaryValue)
    var ipArray = [String]()
    for i in 0...3 {
        var ip = binaryArray[i*8...i*8+7]
        ipArray.append(String(ip))
    }
    var ipValueArray = [Int]()
    for ip in ipArray {
        var num = 0
        for i in ip {
            let n = Int(String(i))!
            num = num * 2 + n
        }
        ipValueArray.append(num)
    }
    
    return "\(ipValueArray[0]).\(ipValueArray[1]).\(ipValueArray[2]).\(ipValueArray[3])"
}
