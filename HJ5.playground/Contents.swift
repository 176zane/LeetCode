import Foundation

let dic: [Character:Int] = ["0":0,"1":1,"2":2,"3":3,"4":4,"5":5,"6":6,"7":7,"8":8,"9":9,"A":10,"B":11,"C":12,"D":13,"E":14,"F":15]
while var str = readLine() {
    if str.hasPrefix("0x"){
        let range = str.startIndex...str.index(str.startIndex, offsetBy: 1)
        str.removeSubrange(range)
        str = str.uppercased()
        var result = 0
        for char in str {
            if let n = dic[char] {
                result = result * 16 + n
            }
        }
        print(result)
        
    }
}
