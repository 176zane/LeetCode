import Foundation

while let str = readLine() {
    if str.count > 0 {
        var array = [Character]()
        for char in str {
            array.append(char)
            if array.count == 8{
                print(String(array))
                array = [Character]()
            }
        }
        if array.count > 0 {
            while array.count < 8 {
                array.append("0")
            }
            print(String(array))
        }
    }
}
