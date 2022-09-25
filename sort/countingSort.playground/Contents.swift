func countingSort(_ array: [Int]) -> [Int] {
    guard array.count > 1 else { return array }

    let max = array.max() ?? 0
    var countArray = [Int](repeating: 0, count: Int(max + 1)) //其中存储小于或者等于元素值的个数
    for i in array {
        countArray[i] += 1//计算每个元素出现的次数
    }

    for i in 1 ..< countArray.count {
        let sum = countArray[i] + countArray[i - 1]
        countArray[i] = sum//算出小于等于此元素值的个数
    }
    
    var sortedArray = [Int](repeating: 0, count: array.count)
    for i in array {
        countArray[i] -= 1
        sortedArray[countArray[i]] = i
    }
    return sortedArray
}


let list = [ 10, 3, 9, 2, 27, 8, 5, 1, 3, 0, 26 ]
countingSort(list)
