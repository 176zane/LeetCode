import Foundation

var bigger = 0
var array = [(String,Int)]()
if let _ = readLine(), let bigStr = readLine(){
    bigger = Int(bigStr)!
}
while let str = readLine() {
    var parts = str.split(separator: " ")
    let (name,score) = (String(parts[0]),Int(parts[1])!)
    array.append(((name,score)))
}
if bigger == 1 {
    array = array.sorted(by: {$0.1<$1.1})
}else {
    array = array.sorted(by: {$0.1>$1.1})
}
for (name,score) in array {
    print("\(name) \(score)")
}
