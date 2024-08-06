def plus_one(digits)
  n = digits.length

  (n - 1).downto(0) do |i|
    if digits[i] < 9
      digits[i] += 1
      return digits
    end
    digits[i] = 0
  end

  digits.unshift(1)
  digits
end

# Test:
puts plus_one([1, 2, 3]).inspect  # Output: [1, 2, 4]
puts plus_one([4, 3, 2, 1]).inspect  # Output: [4, 3, 2, 2]
puts plus_one([9]).inspect  # Output: [1, 0]
