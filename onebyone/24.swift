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
    func swapPairs(_ head: ListNode?) -> ListNode? {
        if head?.next == nil || head == nil {
            return head
        }
// 前2个：
        var dummy = head?.next;
        var temp = dummy?.next;
        head?.next = nil;
        dummy?.next = head;
        head?.next = temp;

// 递归处理后两个以及所有后两个：
        temp = swapPairs(temp)
        head?.next = temp;
        return dummy;

        
        
    }
}

// 我有问题：？ 和 ！ 的用法有什么区别。
