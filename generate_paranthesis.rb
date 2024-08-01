# function generate_parenthesis(n):
#     result = empty list
#     backtrack(result, "", 0, 0, n)
#     return result

# function backtrack(result, current, open, close, max):
#     if length of current is equal to max * 2:
#         add current to result
#         return

#     if open < max:
#         backtrack(result, current + "(", open + 1, close, max)

#     if close < open:
#         backtrack(result, current + ")", open, close + 1, max)
def generate_parenthesis(n)
  result = []
  backtrack(result, "", 0, 0, n)
  result
end

def backtrack(result, current, open, close, max)
  if current.length == max * 2
    result << current
    return
  end

  if open < max
    backtrack(result, current + "(", open + 1, close, max)
  end

  if close < open
    backtrack(result, current + ")", open, close + 1, max)
  end
end

# Example usage:
puts generate_parenthesis(3).inspect
puts generate_parenthesis(1).inspect
