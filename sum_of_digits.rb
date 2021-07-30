def digital_root(n)
  result = []                     # Result array for future mapping

  n.to_s.each_char do |x|         # Map each number to result
    result << x.to_i
  end

  result = result.sum             # Add the numbers together

  while result.to_s.length != 1   # If result is not one digit in length...
    number_box = []               # Create a blank number_box
    result.to_s.each_char do |x|  # Map each number from result into number_box
      number_box << x.to_i
    end
    result = number_box.sum       # Add the numbers together and place them in result
  end

  result                          # Once the number is one digit in length, return the answer
end
