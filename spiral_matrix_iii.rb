function spiralMatrixIII(rows, cols, rStart, cStart):
    initialize result as an empty list
    initialize directions as a list of movements: [(0, 1), (1, 0), (0, -1), (-1, 0)]  // Right, Down, Left, Up
    initialize steps as 1
    initialize directionIndex as 0
    
    Add the starting position to the result
    add [rStart, cStart] to result

    while the size of result is less than rows * cols:
        for 2 times:
          Get the current direction based on directionIndex
            direction = directions[directionIndex % 4]
            
             Move steps times in the current direction
            for step from 1 to steps:
                rStart += direction[0]  // Move in the row direction
                cStart += direction[1]  // Move in the column direction

                If the current position is within the grid boundaries
                if rStart is within [0, rows-1] and cStart is within [0, cols-1]:
                    add [rStart, cStart] to result

            Move to the next direction
            directionIndex += 1
        
        After every two direction changes, increase the steps
        increment steps by 1
    
    return result
