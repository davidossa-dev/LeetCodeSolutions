extension Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {

        // Create a dictionary to store the number and its index.
        var numToIndex: [Int: Int] = [:]
        // Iterate through the array.
        for (currentIndex, num) in nums.enumerated() {
            // Calculate the complement.
            let complement = target - num
            // If the complement exists in the dictionary, return the indices.
            if let complementIndex = numToIndex[complement] {
                return [complementIndex, currentIndex]
            }
            // Otherwise, store the number and its index in the dictionary.
            numToIndex[num] = currentIndex
        }

        // If no solution is found, return an empty array.
        return []
    }
}
