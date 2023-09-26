import Foundation

if let nStr = readLine(){
    var n = Double(nStr)!
    var s = 0.0
    var h = n
    for _ in 1...5 {
        s += h*2
        h = h / 2.0
    }
    s -= n
    print(String(format: "%.6f", s))
    print(String(format: "%.6f", h))
    
}

