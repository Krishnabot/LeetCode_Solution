def add_binary(a, b)
  i = a.length - 1
  j = b.length - 1
  carry = 0
  result = []

  while i >= 0 || j >= 0 || carry != 0
    sum = carry
    sum += a[i].to_i if i >= 0
    sum += b[j].to_i if j >= 0
    result << (sum % 2).to_s
    carry = sum / 2
    i -= 1
    j -= 1
  end

  result.reverse.join
end

# Test:
puts add_binary("11", "1")  # Output: "100"
puts add_binary("1010", "1011")  # Output: "10101"
