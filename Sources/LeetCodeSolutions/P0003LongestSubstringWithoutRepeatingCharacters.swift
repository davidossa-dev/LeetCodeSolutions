extension Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {

        // Start index of the current window.
        var windowStartIndex = 0
        // The length of the longest substring found.
        var longestSubstringLength = 0
        // Store the last seen position of each character.
        var lastSeenCharIndex: [Character: Int] = [:]

        // Iterate over the characters in the string with their indices.
        for (currentIndex, currentChar) in s.enumerated() {
            // If the character has been seen before, move the start index of the window.
            if let lastSeenIndex = lastSeenCharIndex[currentChar] {
                // Update the start index of the window to exclude the repeated character.
                windowStartIndex = max(windowStartIndex, lastSeenIndex + 1)
            }

            // Insert/update the character's last seen position in the hashmap.
            lastSeenCharIndex[currentChar] = currentIndex

            // Calculate the length of the current window and update longestSubstringLength if it's the longest found so far.
            longestSubstringLength = max(
                longestSubstringLength, currentIndex - windowStartIndex + 1)
        }

        // Return the length of the longest substring found.
        return longestSubstringLength
    }
}
