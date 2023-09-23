import Foundation

if let str = readLine() {
    var array = [Character]()
    for c in str.reversed(){
        array.append(c)
    }
    print(String(array))
}
