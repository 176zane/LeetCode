import Foundation

if let str = readLine() {
    var charArray = [Character]()
    var charSet = Set<Character>()
    for c in str.reversed() {
        if !charSet.contains(c) {
            charSet.insert(c)
            charArray.append(c)
        }
    }
    print(Int(String(charArray))!)
}
