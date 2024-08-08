def spiral_matrix_iii(rows, cols, rStart, cStart)
  # initialize result as an empty list
  result = []
  # initialize directions as a list of movements: [(0, 1), (1, 0), (0, -1), (-1, 0)]  # Right, Down, Left, Up
  directions = [[0, 1], [1, 0], [0, -1], [-1, 0]]  # Right, Down, Left, Up
  # initialize steps as 1
  steps = 1
  # initialize directionIndex as 0
  i = 0
  # Add the starting position to the result
  result << [rStart, cStart]
  # while the size of result is less than rows * cols:
  while result.size < rows * cols
    # for 2 times:
    2.times do
      # Get the current direction based on directionIndex
      direction = directions[i % 4]
      # Move steps times in the current direction
      steps.times do
        # rStart += direction[0]  // Move in the row direction
        rStart += direction[0]
        # cStart += direction[1]  // Move in the column direction
        cStart += direction[1]
        # If the current position is within the grid boundaries
        if rStart >= 0 && rStart < rows && cStart >= 0 && cStart < cols
          # add [rStart, cStart] to result
          result << [rStart, cStart]
        end
      end
      # Move to the next direction
      i += 1
    end
    # After every two direction changes, increase the steps
    steps += 1
  end
  # return result
  result
end

# Tests
puts spiral_matrix_iii(1, 4, 0, 0).inspect # Output: [[0,0],[0,1],[0,2],[0,3]]
puts spiral_matrix_iii(5, 6, 1, 4).inspect
# Output: [[1,4],[1,5],[2,5],[2,4],[2,3],[1,3],[0,3],[0,4],[0,5],[3,5],[3,4],[3,3],[3,2],[2,2],[1,2],[0,2],[4,5],[4,4],[4,3],[4,2],[4,1],[3,1],[2,1],[1,1],[0,1],[4,0],[3,0],[2,0],[1,0],[0,0]]
