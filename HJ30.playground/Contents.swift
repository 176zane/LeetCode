import Foundation

if var str = readLine() {
    str.remove(at: str.firstIndex(of: " ")!)
    str = processSort(str)
    print(processBinary(str))
}

func processSort(_ s: String) -> String{
    var aArray = [Character]()
    var bArray = [Character]()
    for (i,v) in s.enumerated() {
        if i % 2 == 0 {
            aArray.append(v)
        }else {
            bArray.append(v)
        }
    }
    aArray = aArray.sorted()
    bArray = bArray.sorted()
    var rArray = [Character]()
    for i in 0..<bArray.count {
        rArray.append(aArray[i])
        rArray.append(bArray[i])
    }
    if aArray.count > bArray.count {
        rArray.append(aArray.last!)
    }
    return String(rArray)
}
func processBinary(_ s:String) -> String {
    let dic: [Character :Int] = ["a":10,"A":10,"b":11,"B":11,"c":12,"C":12,"d":13,"D":13,"e":14,"E":14,"f":15,"F":15]
    var resultArray = [Character]()
    for c in s {
        if let num = Int(String(c)) {
            resultArray.append(changeValue(num))
        }else if let num = dic[c] {
            resultArray.append(changeValue(num))
        } else {
            resultArray.append(c)
        }
    }
    return String(resultArray)
}
func changeValue(_ num:Int) -> Character {
    //String(2,radix: 2)  会返回 10
    //String(1,radix: 2)  会返回 1
    //这里需要将其补齐到4位
    var s = String(num,radix: 2)
    while s.count < 4 {
        s.insert("0", at: s.startIndex)
    }
  
    s = String(s.reversed())
 
    var num = 0
    for c in s {
        if let i = Int(String(c)) {
            num = num * 2 + i
        }
    }
    var r = String(num,radix: 16,uppercase: true)
    return Character(r)
}
