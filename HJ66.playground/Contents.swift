import Foundation

let dic = ["reset":"reset what","reset board":"board fault","board add":"where to add","board delete":"no board at all","reboot backplane":"impossible","backplane abort":"install first"]
let errorStr = "unknown command"
let commandArray = [["reset","board"],["board","add"],["board","delete"],["reboot","backplane"],["backplane","abort"]]

while let command = readLine() {
    print(match(command))
}
func match(_ command:String) -> String {
    let commands = command.split(separator: " ")
    if commands.count == 2 {
        var matchArray = [[String]]()
        for array in commandArray {
            if array[0].hasPrefix(commands[0]) && array[1].hasPrefix(commands[1]) {
                matchArray.append(array)
            }
        }
        if matchArray.count == 1 {
            let match = matchArray[0][0] + " " + matchArray[0][1]
            return dic[match]!
         }else {
            return errorStr
        }
        
    }else {
        if "reset".hasPrefix(command) {
            return dic["reset"]!
        }else {
            return errorStr
        }
    }
}
