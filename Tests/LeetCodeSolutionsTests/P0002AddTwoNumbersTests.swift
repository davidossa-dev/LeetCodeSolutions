import XCTest

@testable import LeetCodeSolutions

final class P0002AddTwoNumbersTests: XCTestCase {

    var l1: ListNode? = nil
    var l2: ListNode? = nil
    var expected: ListNode? = nil

    func createLinkedList(from array: [Int]) -> ListNode? {
        var head: ListNode?
        var current: ListNode?

        for num in array {
            let node = ListNode(num)
            if head == nil {
                head = node
                current = node
            } else {
                current?.next = node
                current = node
            }
        }

        return head
    }

    func testCase01() throws {
        l1 = createLinkedList(from: [2, 4, 3])
        l2 = createLinkedList(from: [5, 6, 4])
        expected = createLinkedList(from: [7, 0, 8])

        let result = Solution().addTwoNumbers(l1, l2)
        XCTAssertEqual(result, expected)
    }

    func testCase02() throws {
        l1 = createLinkedList(from: [0])
        l2 = createLinkedList(from: [0])
        expected = createLinkedList(from: [0])

        let result = Solution().addTwoNumbers(l1, l2)
        XCTAssertEqual(result, expected)
    }

    func testCase03() throws {
        l1 = createLinkedList(from: [9, 9, 9, 9, 9, 9, 9])
        l2 = createLinkedList(from: [9, 9, 9, 9])
        expected = createLinkedList(from: [8, 9, 9, 9, 0, 0, 0, 1])

        let result = Solution().addTwoNumbers(l1, l2)
        XCTAssertEqual(result, expected)
    }
}
