
//这个版本的快速排序不是很快，因为我们对相同的数组使用filter()三次。有更聪明的方法分割数组。
func quicksort(_ array: [Int]) -> [Int] {
      guard array.count > 1 else { return array }

      let pivot = array[array.count/2]
      let less = array.filter { $0 < pivot }
      let equal = array.filter { $0 == pivot }
      let greater = array.filter { $0 > pivot }

      return quicksort(less) + equal + quicksort(greater)
}
let list1 = [ 10, -1, 3, 9, 2, 27, 8, 5, 1, 3, 0, 26 ]
quicksort(list1)

//使用了辅助空间的快排，这种方法需要O(n)的辅助空间，不是原地排序的算法了
func quickSortWithSpace(_ data: [Int]) -> [Int] {
    guard data.count > 1 else {return data}
    
    var left = [Int]()
    var right = [Int]()
    let pivot = data[data.count-1]
    for index in 0..<data.count-1 {
        if data[index] <= pivot {
            left.append(data[index])
        }else{
            right.append(data[index])
        }
    }

    var result = quickSortWithSpace(left)
    result.append(pivot)
    result += quickSortWithSpace(right)
    return result
}
let list2 = [ 10, -1, 3, 9, 2, 27, 8, 5, 1, 3, 0, 26 ]
quickSortWithSpace(list2)


//

func partition(_ array:inout [Int],_ low:Int,_ high:Int) -> Int {
    let pivot = array[high]
    var i = low
    for j in low..<high {
        if array[j] < pivot {
            let temp = array[j]
            array[j] = array[i]
            array[i] = temp
            i += 1
        }
    }
    array[high] = array[i]
    array[i] = pivot
    return i
 }

func quickSortC(_ array:inout [Int],_ low:Int,_ high:Int) -> Void {
    if low >= high { return }
    
    let index = partition(&array, low, high)
    quickSortC(&array,low,index-1)
    quickSortC(&array,index+1,high)
}
func quickSort(_ array:inout [Int]){
    quickSortC(&array, 0, array.count-1)
}

var list3 = [ 10, -1, 3, 9, 2, 27, 8, 5, 1, 3, 0, 26 ]
quickSort(&list3)
print(list3)
