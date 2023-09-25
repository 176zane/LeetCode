import Foundation

if let str = readLine() {
    var resultArray = [String]()
    var wordArray = [Character]()
    for c in str {
        if c.isLetter {
            wordArray.append(c)
        }else {
            if wordArray.count > 0 {
                while wordArray.count > 20 {
                    wordArray.removeLast()
                }
                resultArray.append(String(wordArray))
                wordArray = [Character]()
            }
        }
    }
    //剩最后一个 也要添加进去
    if wordArray.count > 0 {
        while wordArray.count > 20 {
            wordArray.removeLast()
        }
        resultArray.append(String(wordArray))
    }
    
    for s in resultArray.reversed() {
        print(s, terminator: " ")
    }
}
