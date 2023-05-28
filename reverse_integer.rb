def reverse(x)
    # Convert the input integer to a string
    x_str = x.to_s
  
    # Check if the number is negative
    negative = x < 0
  
    # Reverse the string
    reversed_str = x_str.reverse
  
    # Remove the minus sign if the number was negative
    reversed_str.delete!('-') if negative
  
    # Convert the reversed string back to an integer
    reversed_int = reversed_str.to_i
  
    # Check if the reversed integer is within the 32-bit signed integer range
    return 0 if reversed_int > 2**31 - 1 || reversed_int < -2**31
  
    # If the number was originally negative, return the reversed integer with a minus sign
    return -reversed_int if negative
  
    # Otherwise, return the reversed integer
    reversed_int
  end
  