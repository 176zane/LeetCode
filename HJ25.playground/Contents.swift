import Foundation

if let Istr = readLine(), let Rstr = readLine() {
    var I = Istr.split(separator: " ").map{String($0)}
    var R = Rstr.split(separator: " ").map{Int($0)!}
    I.removeFirst()
    R.removeFirst()
    R = Array(Set(R))
    R = R.sorted()
    var dic = [Int:[[Int:String]]]()
    for i in R {
        var dicArray = [[Int:String]]()
        for (j,v) in I.enumerated() {
            if v.contains(String(i)) {
                dicArray.append([j:v])
            }
        }
        if dicArray.count > 0 {
            dic[i] = dicArray
        }
    }
    
    var resultArray = [Int]()
    for i in R {
        if let dicArray = dic[i] {
            resultArray.append(i)
            resultArray.append(dicArray.count)
            for d in dicArray {
                for (j,v) in d{
                    resultArray.append(j)
                    resultArray.append(Int(v)!)
                }
            }
        }
    }
    print(resultArray.count,terminator: " ")
    for i in resultArray {
        print(i,terminator: " ")
    }
}

