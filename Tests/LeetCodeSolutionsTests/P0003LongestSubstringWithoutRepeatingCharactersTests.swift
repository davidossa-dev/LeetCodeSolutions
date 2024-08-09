import XCTest

@testable import LeetCodeSolutions

final class P0003LongestSubstringWithoutRepeatingCharactersTests: XCTestCase {

    var s: String = ""
    var expected: Int = 0

    func testCase01() throws {
        s = "abcabcbb"
        expected = 3

        let result = Solution().lengthOfLongestSubstring(s)
        XCTAssertEqual(result, expected)
    }

    func testCase02() throws {
        s = "bbbbb"
        expected = 1

        let result = Solution().lengthOfLongestSubstring(s)
        XCTAssertEqual(result, expected)
    }

    func testCase03() throws {
        s = "pwwkew"
        expected = 3

        let result = Solution().lengthOfLongestSubstring(s)
        XCTAssertEqual(result, expected)
    }
}
