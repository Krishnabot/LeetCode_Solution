def is_valid(s)
  stack = []
  brackets = {
    '(' => ')',
    '[' => ']',
    '{' => '}'
  }

  s.each_char do |char|
    if brackets.key?(char)
      # If an opening bracket is encountered, add its corresponding closing bracket to the stack
      stack << brackets[char]
    elsif brackets.values.include?(char)
      # For a closing bracket, check if the stack is empty or the top element is not its corresponding opening bracket
      return false if stack.empty? || stack.pop != char
    end
  end

  stack.empty?
end

# Example usage:
puts is_valid("()")       # Output: true
puts is_valid("()[]{}")   # Output: true
puts is_valid("(]")       # Output: false
