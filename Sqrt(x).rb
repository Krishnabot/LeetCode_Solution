def my_sqrt(x)
  return x if x < 2

  left, right = 1, x / 2

  while left <= right
    mid = left + (right - left) / 2
    if mid * mid == x
      return mid
    elsif mid * mid < x
      left = mid + 1
    else
      right = mid - 1
    end
  end

  right
end

# Test
puts my_sqrt(4)  # Output: 2
puts my_sqrt(8)  # Output: 2
puts my_sqrt(10) # Output: 3
puts my_sqrt(30) # Output: 5


