import Foundation

while let nStr = readLine(),let udStr = readLine() {
    let n = Int(nStr)!
    if n <= 4 {
        for i in 1...n {
            print(i,terminator: " ")
        }
        print("")
        var current = 0
        for c in udStr {
            if c == "U" {
                current -= 1
                if current < 0 {
                    current = n-1
                }
            }
            if c == "D" {
                current += 1
                if current == n {
                    current = 0
                }
            }
        }
        print(current+1)
    }else {
        var array = [Int]()
        for i in 1...n {
            array.append(i)
        }
        var start = 0
        var current = 0
        
        for c in udStr {
            if c == "U" {
                current -= 1
                if current < 0 {
                    current = n-1
                    start = n-4
                }
                if current < start {
                    start -= 1
                }
            }
            if c == "D" {
                current += 1
                if current == n {
                    current = 0
                    start = 0
                }
                if current - start == 4 {
                    start += 1
                }
            }
        }
        for i in start..<start+4 {
            print(i+1,terminator: " ")
        }
        print("")
        print(current+1)
        
    }
}
