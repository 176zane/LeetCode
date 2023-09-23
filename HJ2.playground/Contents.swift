import Foundation

while let str = readLine(),let c = readLine() {
    let lowerStr = str.lowercased()
    let lowerC = c.lowercased()
    var a = 0
    for char in lowerStr {
        if char == Character(lowerC) {
            a += 1
        }
    }
    print(a)
}
