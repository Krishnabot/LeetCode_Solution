def convert(s, num_rows)
    return s if num_rows == 1 || s.length <= num_rows
  
    # Create an array of strings to represent the rows
    rows = Array.new(num_rows, '')
  
    current_row = 0
    direction = 1
  
    s.each_char do |char|
      # Append the current character to the corresponding row
      rows[current_row] += char
  
      # Update the current row and direction
      if current_row == 0
        direction = 1
      elsif current_row == num_rows - 1
        direction = -1
      end
  
      current_row += direction
    end
  
    # Join the rows to form the final converted string
    rows.join('')
  end
  
  # Test cases
  puts convert("PAYPALISHIRING", 3)  # Output: "PAHNAPLSIIGYIR"
  puts convert("PAYPALISHIRING", 4)  # Output: "PINALSIGYAHRPI"
  