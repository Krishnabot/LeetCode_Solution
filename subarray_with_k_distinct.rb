def subarrays_with_k_distinct(nums, k)
    n = nums.length
    count = Array.new(n + 1, 0) # Initialize an array to keep track of the frequency of each integer
    distinct = 0 # Variable to store the number of distinct integers in the current subarray
    left = 0 # Left pointer of the sliding window
    result = 0 # Variable to store the count of good subarrays
  
    (0...n).each do |right|
      count[nums[right]] += 1 # Increment the count of the current integer in the subarray
      distinct += 1 if count[nums[right]] == 1 # If the count becomes 1, increment the distinct count
  
      # Adjust the window by moving the left pointer until the number of distinct integers becomes k
      while distinct > k
        count[nums[left]] -= 1 # Decrease the count of the leftmost integer in the subarray
        distinct -= 1 if count[nums[left]] == 0 # If the count becomes 0, decrement the distinct count
        left += 1 # Move the left pointer to the right
      end
  
      # If the number of distinct integers is equal to k, count the subarrays and adjust the window
      if distinct == k
        i = left
        while distinct == k
          count[nums[i]] -= 1 # Decrease the count of the integer at position i in the subarray
          distinct -= 1 if count[nums[i]] == 0 # If the count becomes 0, decrement the distinct count
          i += 1 # Move i to the right
          result += 1 # Increment the count of good subarrays
        end
  
        # Adjust the window by moving the left pointer and restoring the counts and distinct count
        (left...i).each do |j|
          count[nums[j]] += 1 # Increase the count of the integer at position j
          distinct += 1 if count[nums[j]] == 1 # If the count becomes 1, increment the distinct count
        end
      end
    end
  
    result # Return the total count of good subarrays
  end
  