import Foundation

if let str = readLine() {
    var cArray = Array(str)
    cArray =  cArray.sorted(by: {a,b in
        return a.unicodeScalars.first!.value < b.unicodeScalars.first!.value
    })
    print(String(cArray))
}

