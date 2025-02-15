def swap_pairs(head)
    return head if head.nil? || head.next.nil?

    dummy = ListNode.new(0)
    dummy.next = head
    prev = dummy
    current = head

    while current && current.next
        first_node = current
        second_node = current.next

        # Swap the nodes
        first_node.next = second_node.next
        second_node.next = first_node
        prev.next = second_node

        # Move pointers for the next pair
        prev = first_node
        current = first_node.next
    end

    dummy.next
end