import Foundation

let dic = [1:"one",2:"two",3:"three",4:"four",5:"five",6:"six",7:"seven",8:"eight",9:"nine",10:"ten",11:"eleven",12:"twelve",13:"thirteen",14:"fourteen",15:"fifteen",16:"sixteen",17:"seventeen",18:"eighteen",19:"nineteen"]
let tenDic = [2:"twenty",3:"thirty",4:"forty",5:"fifty",6:"sixty",7:"seventy",8:"eighty",9:"ninety"]
let array = [" thousand "," million "," billion "]

if let numStr = readLine() {
    var num = Int(numStr)!
    var result = String()
    var i = 0
    while num > 0 {
        let thousand = num % 1000
        result.insert(contentsOf: numToEnglish(thousand), at: result.startIndex)
        num = num / 1000
        if num > 0 {
            result.insert(contentsOf: array[i%3], at: result.startIndex)
            i += 1
        }
    }
    print(result)
}
//3位数转化为英语
func numToEnglish(_ num: Int) -> String {
    var english = String()
    
    let hundred = num / 100
    let rest = num % 100
    if let h = dic[hundred] {
        english += "\(h) hundred"
    }
    if num > 100 && rest > 0 {
        english += " and"
    }
    if let a = dic[rest] {
        english += " \(a)"
    }else {
        let ten = rest / 10
        let ge = rest % 10
        if let t = tenDic[ten] {
            english += " \(t)"
        }
        if let g = dic[ge] {
            english += " \(g)"
        }
    }
    if english.first == " " {
        english.removeFirst()
    }
    return english
}
