import Foundation

if let str = readLine() {
    var array = [Character]()
    for i in "a".unicodeScalars.first!.value..."z".unicodeScalars.first!.value{
        var lower = Character(UnicodeScalar(i)!)
        var upper = Character(lower.uppercased())
        
        for c in str {
            if c == lower||c == upper{
                array.append(c)
            }
        }
    }
    var resultArray = [Character]()
    for c in str {
        if c.isLetter {
            resultArray.append(array.removeFirst())
        }else {
            resultArray.append(c)
        }
    }
    for c in resultArray {
        print(c,terminator: "")
    }
}

