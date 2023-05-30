function romanToInt(s) {
    const symbolValues = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]; // Descending order of symbol values
    const symbols = ['M', 'CM', 'D', 'CD', 'C', 'XC', 'L', 'XL', 'X', 'IX', 'V', 'IV', 'I']; // Corresponding symbols
  
    let result = 0;
    let i = 0; // Loop iterator
  
    for (let j = 0; j < symbols.length; j++) { // Iterate through symbols
      while (s.startsWith(symbols[j], i)) { // Check if current symbol matches the input starting from index i
        result += symbolValues[j]; // Add the value to the result
        i += symbols[j].length; // Move the index i to skip the matched symbol
      }
    }
  
    return result;
  }
  
  // Example usage:
  console.log(romanToInt("III")); // Output: 3
  console.log(romanToInt("LVIII")); // Output: 58
  console.log(romanToInt("MCMXCIV")); // Output: 1994
  