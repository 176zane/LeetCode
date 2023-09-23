import Foundation

while let str = readLine() {
    if let num = Double(str) {
        print(Int(num+0.5))
    }
}
