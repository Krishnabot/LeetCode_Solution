def length_of_longest_substring(s)
    max_length = 0
    start = 0
    char_map = {}
  
    s.each_char.with_index do |current_char, end_index|
      if char_map.key?(current_char)
        # If the current character is already in the map,
        # move the start pointer to the right of the last occurrence.
        start = [start, char_map[current_char] + 1].max
      end
  
      char_map[current_char] = end_index # Update the index of the current character
      max_length = [max_length, end_index - start + 1].max # Update the maximum length
    end
  
    max_length
  end
  
  