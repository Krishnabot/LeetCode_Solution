def my_atoi(s)
    s = s.strip  # Remove leading and trailing whitespace
  
    # Check if the string is empty
    return 0 if s.empty?
  
    # Initialize variables
    sign = 1
    result = 0
    i = 0
  
    # Check for sign character
    if s[0] == '-' || s[0] == '+'
      sign = s[0] == '-' ? -1 : 1
      i += 1
    end
  
    # Iterate through digits
    while i < s.length && s[i].match?(/\d/)
      digit = s[i].to_i
  
      # Check for overflow
      if result > (2**31 - 1 - digit) / 10
        return sign == 1 ? 2**31 - 1 : -2**31
      end
  
      result = result * 10 + digit
      i += 1
    end
  
    result * sign
  end
  

  
puts my_atoi("42")                # Output: 42
puts my_atoi("   -42")            # Output: -42
puts my_atoi("4193 with words")   # Output: 4193
