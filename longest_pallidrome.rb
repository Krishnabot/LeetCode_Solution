def longest_palindrome(s)
    return s if s.length < 2
  
    # Transform the input string to include special characters
    # for handling even-length palindromes
    transformed = "#{"#"}#{s.split('').join("#")}#"
  
    # Initialize the arrays for storing lengths and centers
    palindrome_lengths = Array.new(transformed.length, 0)
    center = 0
    right_boundary = 0
    max_length = 0
    max_center = 0
  
    (1...transformed.length - 1).each do |i|
      mirror = 2 * center - i
  
      # Update the palindrome length at index i
      if i < right_boundary
        palindrome_lengths[i] = [right_boundary - i, palindrome_lengths[mirror]].min
      end
  
      # Expand around the current character to find palindromes
      while transformed[i + 1 + palindrome_lengths[i]] == transformed[i - 1 - palindrome_lengths[i]]
        palindrome_lengths[i] += 1
      end
  
      # Check if the current palindrome expands beyond the right boundary
      if i + palindrome_lengths[i] > right_boundary
        center = i
        right_boundary = i + palindrome_lengths[i]
      end
  
      # Update the maximum palindrome length and center if necessary
      if palindrome_lengths[i] > max_length
        max_length = palindrome_lengths[i]
        max_center = i
      end
    end
  
    # Extract the longest palindrome substring from the transformed string
    start_index = (max_center - max_length) / 2
    end_index = start_index + max_length
    s[start_index...end_index]
  end
  
  # Test cases
  puts longest_palindrome("babad")  # Output: "bab" or "aba"
  puts longest_palindrome("cbbd")   # Output: "bb"
  