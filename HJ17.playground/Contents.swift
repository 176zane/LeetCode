import Foundation

var x = 0
var y = 0
if let s = readLine(){
    var parts = s.split(separator: ";")
    for command in parts {
        if command.count > 1 && command.count < 4 {
            var numStr = command[command.index(after: command.startIndex)..<command.endIndex]
            if let n = Int(numStr){
                if command.hasPrefix("A"){
                    x -= n
                }
                if command.hasPrefix("W"){
                    y += n
                }
                if command.hasPrefix("S"){
                    y -= n
                }
                if command.hasPrefix("D"){
                    x += n
                }
            }
        }
    }
}

print("\(x),\(y)")
