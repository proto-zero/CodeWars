def longest_consec(strarr, k)
  # Variables
  array_length = strarr.length
  result = ""
  end_position = k

  # Checking for blank returns
  if array_length == 0 || k > array_length || k <= 0
    return ""
  end

  for i in 0..(array_length - k)              # For loop that doesn't go out of bounds
    word = strarr[i...end_position].join      # Create word from strarr from i to the number of positions required by k
    if word.length > result.length            # Makes sure to find the first largest instance
      result = word
    end
    end_position += 1                         # Increase end position
  end

  result
end
