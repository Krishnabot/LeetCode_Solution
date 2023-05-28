def my_atoi(s)
    # Remove leading whitespace
    s = s.lstrip
  
    # Initialize variables
    sign = 1
    result = 0
  
    # Check for sign character
    if s[0] == '-' || s[0] == '+'
      sign = s[0] == '-' ? -1 : 1
      s = s[1..-1]
    end
  
    # Iterate through digits
    s.each_char do |char|
      break unless char.match?(/\d/)  # Break if a non-digit character is encountered
      result = result * 10 + char.to_i
    end
  
    # Clamp the result to the 32-bit signed integer range
    result = [[-2**31, result].max, 2**31 - 1].min
  
    # Apply the sign
    result *= sign
  
    result
  end

  
puts my_atoi("42")                # Output: 42
puts my_atoi("   -42")            # Output: -42
puts my_atoi("4193 with words")   # Output: 4193
