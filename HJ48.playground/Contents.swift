import Foundation

public class Node {
    public var value: Int
    public var next: Node?
    public init(_ value: Int) {self.value = value;self.next = nil}
    public init(_ value: Int,_ next:Node?){self.value = value;self.next = next}
}

while let nStr = readLine() {
    let nArray = nStr.split(separator: " ").map{Int($0)!}
    var head = deleteNode(nArray)
    while head != nil {
        print(head!.value, terminator: " ")
        head = head?.next
    }
}

func deleteNode(_ nums:[Int]) -> Node? {
    var nums = nums
    nums.removeFirst()
    let deleteValue = nums.removeLast()
    var head:Node? = Node(nums.removeFirst())
    
    //插入节点
    for i in stride(from: 0, to: nums.count-1, by: 2) {
        if i+1 < nums.count {
            let node = Node(nums[i])
            var phead:Node? = Node(0, head)
            while phead?.next != nil {
                if phead?.next?.value == nums[i+1] {
                    node.next = phead?.next?.next
                    phead?.next?.next = node
                    break
                }else {
                    phead = phead?.next
                }
            }
        }
    }
    //删除节点
    var p:Node? = Node(0,head)
    
    var current = head
    var prev = p
    while current != nil {
        if current?.value == deleteValue {
            prev?.next = current?.next
            break
        }else {
            prev = prev?.next
            current = current?.next
        }
    }
    return p?.next
}
