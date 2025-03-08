def number_to_words(num)
# Define Arrays:
# less_than_20: Array of words for numbers 0 to 19.
# tens: Array of words for multiples of ten from 10 to 90.
# thousands: Array of words for thousand, million, billion.
  less_than_20 = %w[Zero One Two Three Four Five Six Seven Eight Nine Ten Eleven Twelve Thirteen Fourteen Fifteen Sixteen Seventeen Eighteen Nineteen]
  tens = %w[Zero Ten Twenty Thirty Forty Fifty Sixty Seventy Eighty Ninety]
  thousands = ['', 'Thousand', 'Million', 'Billion']

  # If num is 0, return “Zero”.


  return less_than_20[0] if num == 0

  # Initialize i to 0 and words to an empty string.
# While num is greater than 0:
# If num % 1000 is not 0:
# Append the result of the helper function for num % 1000 and the corresponding thousands[i] to words.
# Divide num by 1000.
# Increment i by 1.

  i = 0
  words = ''

  while num > 0
    if num % 1000 != 0
      words = helper(num % 1000, less_than_20, tens) + thousands[i] + ' ' + words
    end
    num /= 1000
    i += 1
  end
  # Return the trimmed words.


  words.strip
end

# Helper Function (helper):
# If num is 0, return an empty string.
# If num is less than 20, return the corresponding word from less_than_20.
# If num is less than 100, return the corresponding word from tens and recursively call helper for the remainder.
# Otherwise, return the word for the hundreds place and recursively call helper for the remainder.


def helper(num, less_than_20, tens)
  if num == 0
    ''
  elsif num < 20
    less_than_20[num] + ' '
  elsif num < 100
    tens[num / 10] + ' ' + helper(num % 10, less_than_20, tens)
  else
    less_than_20[num / 100] + ' Hundred ' + helper(num % 100, less_than_20, tens)
  end
end

# Tests
puts number_to_words(123)       # Output: "One Hundred Twenty Three"
puts number_to_words(12345)     # Output: "Twelve Thousand Three Hundred Forty Five"
puts number_to_words(1234567)   # Output: "One Million Two Hundred Thirty Four Thousand Five Hundred Sixty Seven"
