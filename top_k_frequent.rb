def top_k_frequent(nums, k)
    # Count the frequency of each number using a hash map
    frequency = Hash.new(0)
    nums.each { |num| frequency[num] += 1 }
  
    # Create a min-heap using a binary heap implementation
    heap = []
    frequency.each do |num, count|
      heap << [num, count]
      heapify_up(heap, heap.size - 1)
      if heap.size > k
        heap[0] = heap.pop
        heapify_down(heap, 0)
      end
    end
  
    # Extract the top k frequent elements from the min-heap
    result = []
    heap.each { |num, _| result << num }
    result
  end
  
  # Heapify up operation for maintaining the min-heap property
  def heapify_up(heap, index)
    parent = (index - 1) / 2
    while index > 0 && heap[parent][1] > heap[index][1]
      heap[parent], heap[index] = heap[index], heap[parent]
      index = parent
      parent = (index - 1) / 2
    end
  end
  
  # Heapify down operation for maintaining the min-heap property
  def heapify_down(heap, index)
    left_child = 2 * index + 1
    right_child = 2 * index + 2
    smallest = index
  
    if left_child < heap.size && heap[left_child][1] < heap[smallest][1]
      smallest = left_child
    end
  
    if right_child < heap.size && heap[right_child][1] < heap[smallest][1]
      smallest = right_child
    end
  
    if smallest != index
      heap[index], heap[smallest] = heap[smallest], heap[index]
      heapify_down(heap, smallest)
    end
  end
  