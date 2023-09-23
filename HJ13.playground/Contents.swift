import Foundation

if let str = readLine() {
    var array = str.split(separator: " ")
    for s in array.reversed() {
        print(s,terminator: " ")
    }
}


