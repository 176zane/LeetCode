import Foundation
//滑动窗口也能做
while let dnaStr = readLine(),let nStr = readLine() {
    let n = Int(nStr)!
    print(maxSub(dnaStr,n))
}

func maxSub(_ dna:String,_ n: Int) -> String {
    let dnaArray = Array(dna)
    var start = 0
    var maxCount = 0
    for j in 0..<dna.count-n {
        let sub = dnaArray[j..<j+n]
        var count = 0
        for c in sub {
            if c == "C" || c == "G" {
                count += 1
            }
        }
        if count > maxCount {
            maxCount = count
            start = j
        }
    }
    let maxSub = dnaArray[start..<start+n]
    return String(maxSub)
}

