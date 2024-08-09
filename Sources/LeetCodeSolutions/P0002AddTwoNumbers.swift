extension Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {

        // Initialize variables to traverse the input lists.
        var current = (l1, l2)
        var carry = 0

        // Create a dummy node to simplify the result list creation.
        let dummyNode = ListNode()
        var result: ListNode? = dummyNode

        // Loop until both lists are fully traversed and there is no carry left.
        while current.0 != nil || current.1 != nil || carry > 0 {
            // Calculate the sum of the current digits plus the carry.
            let sum = (current.0?.val ?? 0) + (current.1?.val ?? 0) + carry

            // Update the carry for the next iteration.
            carry = sum / 10

            // Create a new node with the digit value (sum % 10) and attach it to the result list.
            result?.next = ListNode(sum % 10)

            // Move the current pointer to the next node in the result list.
            result = result?.next

            // Move to the next nodes in the input lists, if available.
            current = (current.0?.next, current.1?.next)
        }

        // Return the next node of the dummy, which is the head of the result list.
        return dummyNode.next
    }
}
