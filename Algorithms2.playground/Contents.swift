public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class Solution {
    static func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var node1 = l1
        var node2 = l2
        var head: ListNode? = nil
        var temp: ListNode? = nil
        var carry: Int = 0
        while node1 != nil || node2 != nil {
            var sum = carry
            if var node = node1 {
                sum += node.val
                node1 = node.next
            }
            if var node = node2 {
                sum += node.val
                node2 = node.next
            }
            let node = ListNode(sum%10)
            carry = sum / 10
            if var val = temp {
                val.next = node
                temp = val.next
            } else {
                head = node
                temp = head
            }
        }
        if carry > 0, let temp = temp {
            temp.next = ListNode(carry)
        }
        return head
    }
}

let l1 = ListNode(5, ListNode(4, ListNode(9)))
let l2 = ListNode(8, ListNode(9, ListNode(5, ListNode(4))))
Solution.addTwoNumbers(l1, l2)
