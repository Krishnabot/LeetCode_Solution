def three_sum_closest(nums, target)
    # Sort the input array
    nums.sort! 
  
    n = nums.length
    # Initialize closest sum with the sum of the first three numbers
    closest_sum = nums[0] + nums[1] + nums[2] 
  
    (0..n - 3).each do |i|
    # Skip duplicate values for the first pointer
      next if i > 0 && nums[i] == nums[i - 1] 
  
      left = i + 1
      right = n - 1
  
      while left < right
        current_sum = nums[i] + nums[left] + nums[right]
        # Early exit if sum equals target
        return target if current_sum == target 
  
        closest_sum = current_sum if (current_sum - target).abs < (closest_sum - target).abs
  
        if current_sum < target
           # Move the left pointer to increase the sum  
          left += 1
        else
        # Move the right pointer to decrease the sum
          right -= 1 
        end
      end
    end
  
    return closest_sum
  end
  