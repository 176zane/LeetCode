/*
 * @lc app=leetcode.cn id=146 lang=swift
 *
 * [146] LRU 缓存
 */

// @lc code=start

class LRUCache {
    var cache: [Int:Node] = [:]
    var count = 0
    let capacity: Int
    var head: Node?
    var tail: Node?
    
    init(_ capacity: Int) {
        self.capacity = capacity
    }
    
    func get(_ key: Int) -> Int {
        if let node = cache[key] {
            moveToHead(node)
            return node.val
        }else {
            return -1
        }
    }
    
    func put(_ key: Int, _ value: Int) {
        if let node = cache[key] {
            node.val = value
            moveToHead(node)
        }else {
            var node = Node(key, value)
            node.next = self.head
            self.head?.prev = node
            self.head = node
            
            self.cache[key] = node
            self.count += 1
            if self.tail == nil {
                self.tail = self.head
            }
            
            if self.count > self.capacity {
                deleteTail()
            }
        }
    }
    func moveToHead(_ node: Node) {
        if node === self.head {
            return
        }else if node === self.tail {
            self.tail?.prev?.next = nil
            self.tail = self.tail?.prev
            
        }
        node.prev?.next = node.next
        node.next?.prev = node.prev
        
        self.head?.prev = node
        node.next = self.head
        self.head = node
            
    }
      
    func deleteTail(){
        if let node = self.tail {
            var pre = node.prev
            pre?.next = nil
            self.tail = pre
            
            self.cache.removeValue(forKey: node.key)
            self.count -= 1
        }
    }
}
public class Node {
    public var key: Int
    public var val: Int
    public var prev: Node?
    public var next: Node?
    init(_ key: Int,_ val: Int) {
        self.key = key
        self.val = val
        self.prev = nil
        self.next = nil
    }

}
/**
 * Your LRUCache object will be instantiated and called as such:
 * let obj = LRUCache(capacity)
 * let ret_1: Int = obj.get(key)
 * obj.put(key, value)
 */
// @lc code=end

