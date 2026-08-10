
func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
    if list1 == nil {
        return list2
    }
    if list2 == nil {
        return list1
    }
    
    var current1 = list1
    var current2 = list2
    var toInsertPre: ListNode?
    var toInsertBeg: ListNode?
    var toInsertEnd: ListNode?
    
    var retHead = list1
    
    while current1 != nil && current2 != nil {
        if current1!.val <= current2!.val {
            if toInsertBeg != nil {
                if toInsertPre == nil {
                    toInsertEnd?.next = current1
                    retHead = toInsertBeg
                } else {
                    toInsertEnd?.next = toInsertPre?.next
                    toInsertPre?.next = toInsertBeg
                }
                toInsertBeg = nil
                toInsertEnd = nil
            }
            toInsertPre = current1
            current1 = current1?.next
        } else {
            if toInsertBeg == nil {
                toInsertBeg = current2
                toInsertEnd = current2
            } else {
                toInsertEnd = toInsertEnd?.next
            }
            current2 = current2?.next
        }
    }
    
    if current1 === list1 {
        toInsertEnd?.next = current1
        return toInsertBeg
    }
    
    if current2 === list2 {
        toInsertPre?.next = current2
        return retHead
    }
    
    if current1 == nil {
        toInsertPre?.next = current2
    } else {
        toInsertPre?.next = toInsertBeg
        toInsertEnd?.next = current1
    }
    return retHead
}


