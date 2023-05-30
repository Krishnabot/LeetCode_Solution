function longestCommonPrefix(strs) {
    if (strs.length === 0) {
      return "";
    }
  
    // Iterate over the characters of the first string
    for (let i = 0; i < strs[0].length; i++) {
      const char = strs[0][i]; // Get the character at index i of the first string
  
      // Iterate over the remaining strings starting from the second string
      for (let j = 1; j < strs.length; j++) {
        // Check if we have reached the end of the current string or if there is a mismatch
        if (i >= strs[j].length || strs[j][i] !== char) {
          // Return the substring of the first string from index 0 to i, which represents the common prefix found so far
          return strs[0].substring(0, i);
        }
      }
    }
  
    // If the loop completes without any mismatches, return the first string itself as it is the entire common prefix
    return strs[0];
  }
  
  // Example usage:
  console.log(longestCommonPrefix(["flower", "flow", "flight"])); // Output: "fl"
  console.log(longestCommonPrefix(["dog", "racecar", "car"])); // Output: ""
  