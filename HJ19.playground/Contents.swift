import Foundation

class File {
    var name: String
    var line: Int
    var count = 1
    init(_ name: String,_ line: Int) {
        self.name = name
        self.line = line
    }
}
var recordSet = Set<String>()
var fileSet = Set<String>()
var fileArray = [File]()

while let str = readLine() {
    if recordSet.contains(str) {continue}
    recordSet.insert(str)
    
    var parts = str.split(separator: " ")
    var name = getName(String(parts[0]))
    var line = String(parts[1])
    var file = name + line
    if fileSet.contains(file) {
        for f in fileArray {
            if f.name == name && f.line == Int(line)! {
                f.count += 1
            }
        }
    }else {
        fileSet.insert(file)
        var f = File(name, Int(line)!)
        fileArray.append(f)
    }
}

while fileArray.count > 8 {
   fileArray.removeFirst()
}
for f in fileArray {
    print("\(f.name) \(f.line) \(f.count)")
}

func getName(_ route:String) -> String {
    var parts = route.split(separator: "\\")
    var last = parts.last!
    if last.count > 16 {
        last = last[last.index(last.endIndex, offsetBy: -16)..<last.endIndex]
        
    }
    return String(last)
}
