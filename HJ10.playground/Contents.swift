import Foundation

if let str = readLine() {
    charNum(str)
}

func charNum(_ str: String) {
    var set = Set<Unicode.Scalar>()
    for c in str.unicodeScalars{
        if c.value >= 0 && c.value < 128 {
            set.insert(c)
        }
        
    }
    print(set.count)
}
