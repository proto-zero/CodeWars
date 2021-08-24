# First Method (Flawed)
def up_array(arr)

  if arr == []                      # If the array is empty, return nil
    return nil
  end

  arr.each do |num|               # For each number in the array...
    if num < 0 || num > 9         # If the number is negative or double digit...
      return nil                  # Return Nil
    end
  end

  if arr[-1] < 9                  # If the last number in the array is less than 9...
    arr[-1] = arr[-1] + 1         # Increase that number by 1
  elsif arr[-1] == 9              # If the last number in the array is equal to 9...
    arr[-2] = arr[-2] + 1         # Increase the second to last number by 1...
    arr[-1] = 0                   # Set the last number to 0
  end

                                  # Method is flawed as it cannot solve arrays
                                  # that contain multiple 9s
                                  # IE: arr = [9, 9, 9] => [1, 0, 0, 0]

  # Result
  arr
end


# Second Method (Functional)
def up_array(arr)
  # Variables
  real_number = ""
  result = []

  if arr == []                      # If the array is empty, return nil
    return nil
  end

  arr.each do |num|                 # For each number in the array...
    if num < 0 || num > 9           # If the number is negative or double digit...
      return nil                    # Return nil
    else                            # Otherwise...
      real_number += num.to_s       # Write that number next as part of real_number
    end
  end

  real_number = (real_number.to_i + 1).to_s  # As an integer, increase real_number by one...
                                             # then change back to a string
  real_number.each_char do |num|             # For each number in real_number...
    result << num.to_i                       # Shovel into the result array
  end

  # Result
  result
end
