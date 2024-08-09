import XCTest

@testable import LeetCodeSolutions

final class P0001TwoSumTests: XCTestCase {

    var nums: [Int] = []
    var target: Int = 0
    var expected: [Int] = []

    func testCase01() throws {
        nums = [2, 7, 11, 15]
        target = 9
        expected = [0, 1]

        let result = Solution().twoSum(nums, target)
        XCTAssert(result == expected || result == expected.reversed())
    }

    func testCase02() throws {
        nums = [3, 2, 4]
        target = 6
        expected = [1, 2]

        let result = Solution().twoSum(nums, target)
        XCTAssert(result == expected || result == expected.reversed())
    }

    func testCase03() throws {
        nums = [3, 3]
        target = 6
        expected = [0, 1]

        let result = Solution().twoSum(nums, target)
        XCTAssert(result == expected || result == expected.reversed())
    }
}
