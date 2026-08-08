func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
    if head == nil {
        return nil
    }
    if n == 0 {
        return head
    }
    let dummyHead = ListNode(-1, head)
    var fast: ListNode? = dummyHead
    var slow: ListNode? = dummyHead
    // fast 前移 n
    for _ in 0 ..< n {
        fast = fast?.next
    }
    while fast?.next != nil {
        fast = fast?.next
        slow = slow?.next
    }
    slow?.next = slow?.next?.next
    return dummyHead.next
}

