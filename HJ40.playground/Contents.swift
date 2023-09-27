import Foundation

if let str = readLine() {
    var a = 0 ,b = 0,c = 0,d = 0
    for i in str {
        switch i {
        case let char where char.isLetter : a += 1
        case " " : b += 1
        case let char where char.isNumber : c += 1
        default : d += 1
        }
    }
    print(a)
    print(b)
    print(c)
    print(d)
}
