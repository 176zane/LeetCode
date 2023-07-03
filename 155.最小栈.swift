/*
 * @lc app=leetcode.cn id=155 lang=swift
 *
 * [155] 最小栈
 */

// @lc code=start

class Node<T> {
    var val : T
    var next : Node? = nil
    var min : T
    init(_ val:T,_ min:T,_ next:Node<T>?){
        self.val = val
        self.min = min
        self.next = next
    }
}
class MinStack {
    private var head :Node<Int>?
    init() {
    }
    
    func push(_ val: Int) {
        if head == nil {
            head = Node(val,val,nil)
        }else {
            head = Node(val, min(val, head!.min), head)
        }
    }
    
    func pop() {
        head = head?.next
    }
    
    func top() -> Int {
        return head!.val
    }
    
    func getMin() -> Int {
        return head!.min
    }
}

/**
 * Your MinStack object will be instantiated and called as such:
 * let obj = MinStack()
 * obj.push(val)
 * obj.pop()
 * let ret_3: Int = obj.top()
 * let ret_4: Int = obj.getMin()
 */
// @lc code=end

