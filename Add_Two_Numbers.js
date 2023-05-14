/**
 * Definition for singly-linked list.
 * function ListNode(val, next) {
 *     this.val = (val===undefined ? 0 : val)
 *     this.next = (next===undefined ? null : next)
 * }
 */
/**
 * @param {ListNode} l1
 * @param {ListNode} l2
 * @return {ListNode}
 */
var addTwoNumbers = function(l1, l2) {
  let dummyHead = new ListNode(0); // Dummy head node of the result list
  let curr = dummyHead; // Pointer to the current node in the result list
  let carry = 0; // Variable to store the carry

  while (l1 || l2) {
    let sum = carry; // Initialize sum with the carry

    // Add the corresponding digits from l1 and l2, if present
    if (l1) {
      sum += l1.val;
      l1 = l1.next;
    }
    if (l2) {
      sum += l2.val;
      l2 = l2.next;
    }

    // Create a new node with the sum % 10 and update the carry
    curr.next = new ListNode(sum % 10);
    curr = curr.next;
    carry = Math.floor(sum / 10);
  }

  // If there's still a carry after iterating through both lists
  if (carry > 0) {
    curr.next = new ListNode(carry);
  }

  return dummyHead.next; // Return the result list (excluding the dummy head)
};