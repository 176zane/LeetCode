import Foundation

var numSet: Set<Int> = Set()
var first = true
while let NumStr = readLine() {
    if first == true {
        first = false
    }else if let n = Int(NumStr){
        numSet.insert(n)
    }
}

var numArray = Array(numSet)
numArray = numArray.sorted(by: <)
for i in numArray {
    print(i)
}
