import Foundation

if let str1 = readLine(),let str2 = readLine() {
    print(process(str1,true))
    print(process(str2,false))
}

func process(_ s:String,_ encode:Bool) -> String {
    var array = [Character]()
    for c in s{
        var c = c
        if c.isLetter {
            if c.isUppercase {
                c = Character(c.lowercased())
            }else if c.isLowercase {
                c = Character(c.uppercased())
            }
            if encode {
                if c == "Z" {
                    c = "A"
                }else if c == "z" {
                    c = "a"
                }else {
                    var u = c.unicodeScalars.first!.value
                    u += 1
                    c = Character(UnicodeScalar(u)!)
                }
            }else {
                if c == "A" {
                    c = "Z"
                }else if c == "a" {
                    c = "z"
                }else {
                    var u = c.unicodeScalars.first!.value
                    u -= 1
                    c = Character(UnicodeScalar(u)!)
                }
            }
            array.append(c)
            
        }else if c.isNumber {
            var n = Int(String(c))!
            if encode {
                n += 1
                n = n % 10
            }else {
                n -= 1
                if n < 0 {
                    n = 9
                }
            }
            array.append(Character(String(n)))
        }else {
            array.append(c)
        }
    }
    return String(array)
}
