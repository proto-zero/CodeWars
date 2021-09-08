def count_by(x, n)
  # Variables
  array = []
  num = x

  # Loop
  n.times do      # Loop a number of times equal to the value of n
    array << num  # Shovel num into array
    num += x      # Increase num by the value of x
  end

  # Result
  array
end
