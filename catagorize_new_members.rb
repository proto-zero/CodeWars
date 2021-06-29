def open_or_senior(data)
  result = []                # Create an array to store the solution
  data.each do |x|           # For each part of the data array
    if x[0] > 54 && x[1] > 7  # if age is over 54 and handicap over 7
      result.push "Senior"    # Senior
    else                     # Otherwise
      result.push "Open"      # Open
    end
  end
  data = result
end
