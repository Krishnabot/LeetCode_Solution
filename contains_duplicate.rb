def contains_duplicate(nums)
    # Create an empty hash set to keep track of seen numbers
    seen = {}
  
    # Iterate over each number in the input array
    nums.each do |num|
      # If the number is already in the seen hash set, it's a duplicate, so return true
      return true if seen[num]
  
      # Add the number to the seen hash set
      seen[num] = true
    end
  
    # If no duplicates were found, return false
    false
  end
  