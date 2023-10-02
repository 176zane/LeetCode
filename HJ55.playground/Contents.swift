
import Foundation

if let nStr = readLine() {
    let n = Int(nStr)!
    print(getNum(n))
}

func getNum(_ n:Int) -> Int{
    var num = 0
    for i in 1...n {
        if i % 7 == 0 {
            num += 1
        }else if String(i).contains("7"){
            num += 1
        }
    }
    return num
}
