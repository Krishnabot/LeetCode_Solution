def length_of_last_word(s)
  length = 0
  in_word = false

  # Traverse the string from the end to the beginning
  (s.length - 1).downto(0) do |i|
    if s[i] != ' '
      length += 1
      in_word = true
    elsif in_word
      break
    end
  end

  length
end


# Test Cases:
puts length_of_last_word("Hello World") # Output: 5
puts length_of_last_word("   fly me   to   the moon  ") # Output: 4
puts length_of_last_word("luffy is still joyboy") # Output: 6