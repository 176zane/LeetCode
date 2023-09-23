import Foundation

class Tool {
    var v: Int = 0
    var p: Int = 0
    var q: Int = 0
    var addition1: Tool?
    var addition2: Tool?
    init(_ v: Int,_ p:Int,_ q:Int){
        self.v = v
        self.p = p
        self.q = q
    }
}


var first = true
var sum = 0
//var count = 0
var toolArray = [Tool]()
while let str = readLine() {
    if first {
        first = false
        let parts = str.split(separator: " ")
        sum = Int(parts[0])!
//        count = Int(parts[1])!
    }else {
        let parts = str.split(separator: " ")
        var tool = Tool(Int(parts[0])!,Int(parts[1])!,Int(parts[2])!)
        if tool.q == 0 {
            toolArray.append(tool)
        }else {
            var main = toolArray[tool.q]
            if main.addition1 == nil {
                main.addition1 = tool
            }else {
                main.addition2 = tool
            }
        }
    }
}

var dp = Array(repeating: Array(repeating: 0, count: toolArray.count+1), count: sum+1)
//设置初始值
for i in 1..<toolArray.count+1 {
    for j in 1..<sum+1 {
        
    }
}
