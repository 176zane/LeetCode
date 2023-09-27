import Foundation

//https://stackoverflow.com/questions/46344649/componentseparatedby-versus-splitseparator

//let str = "My name is Sudhir " // trailing space
//
//    str.split(separator: " ")
//    // ["My", "name", "is", "Sudhir"]
//
//    str.components(separatedBy: " ")
//    // ["My", "name", "is", "Sudhir", ""] ← Additional empty string
// str.split(separator: " ") 与str.components(separatedBy: " ") 有很大区别！！！
if let nStr = readLine(),let weightStr = readLine(),let countStr = readLine() {
    let num = Int(nStr)!
    let weight = weightStr.split(separator: " ").map{Int($0)!}
    let count = countStr.split(separator: " ").map{Int($0)!}
    var result: Set = [0]
    for i in 0..<num {
        let w = weight[i]
        let temp = result
        for currentW in temp {
            for n in 1...count[i] {
                result.insert(currentW + w * n)
            }
        }
    }
    print(result.count)
    
}
