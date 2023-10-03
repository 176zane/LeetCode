import Foundation

if let nStr1 = readLine(),let nStr2 = readLine() {
    let part1 = nStr1.split(separator: " ").map{Int($0)!}
    var part2 = nStr2.split(separator: " ").map{Int($0)!}
    let k = part1[1]
    part2 = part2.sorted()
    for i in 0..<k{
        print(part2[i],terminator: " ")
    }
}

