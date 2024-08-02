#use a single index i to keep track of the position where the next non-val element should be placed
def remove_element(nums, val)
  i = 0
  nums.each do |num|
    if num != val
      nums[i] = num
      i += 1
    end
  end
  return i
end