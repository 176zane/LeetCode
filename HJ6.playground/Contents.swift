import Foundation

while let str = readLine() {
    if var n = Int(str){
        var i = 2
        while n != 1 && i * i <= n {
            while n % i == 0{
                print(i,terminator: " ")
                n = n / i
            }
            i += 1
        }
       if n != 1 {
           print(n,terminator: " ")
       }
        
    }
}

