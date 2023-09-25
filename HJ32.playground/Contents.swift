import Foundation

if let str = readLine() {
    var maxLength = 0
    let sArray = Array(str)
    for i in 0..<sArray.count {
        maxLength = max(maxLength,expand(sArray,i,i))
        if i+1 < sArray.count && sArray[i] == sArray[i+1] {
            maxLength = max(maxLength,expand(sArray,i,i+1))
        }
    }
    print(maxLength)
}

func expand(_ sArray:[Character],_ l: Int,_ r: Int) -> Int {
    var l = l, r = r
    while l >= 0 && r < sArray.count && sArray[l] == sArray[r] {
        l -= 1
        r += 1
    }
    return r-l-1
}

//没有考虑到 AHHHA这种情况
//if let str = readLine() {
//    var maxLength = 0
//    var sArray = Array(str)
//    for i in 0..<sArray.count-1 {
//        var j: Int, k: Int
//        if sArray[i] == sArray[i+1] {
//            j = i
//            k = i + 1
//        }else {
//            j = i
//            k = i
//        }
//        while j >= 0 && k < sArray.count && sArray[j] == sArray[k] {
//            j -= 1
//            k += 1
//        }
//        maxLength = max(maxLength, k-j-1)
//    }
//    print(maxLength)
//}

