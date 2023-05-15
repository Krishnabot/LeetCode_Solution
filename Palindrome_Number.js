function isPalindrome(x) {
    if (x < 0) {
      return false; // Negative numbers are not palindromes
    }
  
    let original = x; // Store the original number
    let reversed = 0; // Initialize the reversed number to 0
  
    // Reversing the number
    while (x > 0) {
      reversed = reversed * 10 + (x % 10); // Multiply reversed by 10 and add the last digit of x
      x = Math.floor(x / 10); // Remove the last digit from x
    }
  
    return original === reversed; // Check if the original and reversed numbers are equal
  }
  
  // Custom Test cases
  console.log(isPalindrome(121)); // true
  console.log(isPalindrome(-121)); // false
  console.log(isPalindrome(10)); // false
  