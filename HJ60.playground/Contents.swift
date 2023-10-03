import Foundation


if let nStr1 = readLine(){
    let n = Int(nStr1)!
    var array = [Int]()
    for i in 2..<n {
        if isSuShu(i){
            array.append(i)
        }
    }
    var l = 0,r = array.count-1
    for i in 0..<array.count {
        for j in 0..<array.count {
            if array[i] + array[j] == n && abs(j-i) < r-l{
                l = i
                r = j
            }
        }
    }
    print(array[l])
    print(array[r])
    
}
//1不是素数，题目中n >= 4
func isSuShu(_ n:Int) -> Bool{
    for i in 2..<n {
        if n % i == 0 {
            return false
        }
    }
    return true
}

