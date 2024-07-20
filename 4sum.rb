def four_sum(nums, target)
  nums.sort!
  result = []
  for i in 0...(nums.length - 3)
    next if i > 0 && nums[i] == nums[i - 1]
    for j in (i + 1)...(nums.length - 2)
      next if j > i + 1 && nums[j] == nums[j - 1]
      sum = target - nums[i] - nums[j]
      low = j + 1
      high = nums.length - 1
      while low < high
        if nums[low] + nums[high] == sum
          result << [nums[i], nums[j], nums[low], nums[high]]
          low += 1
          high -= 1
          low += 1 while low < high && nums[low] == nums[low - 1]
          high -= 1 while low < high && nums[high] == nums[high + 1]
        elsif nums[low] + nums[high] < sum
          low += 1
        else
          high -= 1
        end
      end
    end
  end
  result
end

p four_sum([1,0,-1,0,-2,2],  0)  #Output: [[-2,-1,1,2],[-2,0,0,2],[-1,0,0,1]]
