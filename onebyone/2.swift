/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode? ,_ carry: Int = 0) -> ListNode? {
        
        if l1 == nil, l2 == nil, carry == 0 {
            return nil
        }
        
        let v1 = l1?.val ?? 0
        let v2 = l2?.val ?? 0
        let s = v1 + v2 + carry
        return ListNode(s % 10, addTwoNumbers(l1?.next, l2?.next, s / 10))
    }
}
