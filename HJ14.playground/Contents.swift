import Foundation

var strArray = [String]()
while let s = readLine() {
    strArray.append(s)
}
strArray.removeFirst()
strArray = strArray.sorted()
for str in strArray {
    print(str)
}
