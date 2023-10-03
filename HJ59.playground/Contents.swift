import Foundation

if let nStr1 = readLine(){
    print(findFirst(nStr1))
}
func findFirst(_ str:String) -> String{
    var dic = [Character:Int]()
    for c in str {
        if let n = dic[c] {
            dic[c] = n+1
        }else {
            dic[c] = 1
        }
    }
    for c in str {
        if dic[c] == 1 {
            return String(c)
        }
    }
    return "-1"
}

