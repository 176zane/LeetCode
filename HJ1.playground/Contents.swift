import Foundation

while let line = readLine() {
    let parts = line.split(separator: " ")
    if let last = parts.last {
        print(last.count)
    }
}
