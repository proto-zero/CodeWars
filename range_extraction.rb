def solution(list)
  # Variables
  range = []                     # range is a placeholder array for gathering a range of numbers
  result = []                    # result is the final array

  # For Loop
  for i in 0...list.length       # For each number in list...
    if list[i].next == list[i+1] # if that number's next increment equals the next number in the list...
      range << list[i]           # shovel that number into the range array...
      range << list[i+1]         # as well as the next number
    else
      if !range.include? list[i] # If range doesn't include that number...
        result << list[i]        # shovel that number directly into the result array
      end
      if !range.empty?           # If the range is not empty...
        if range.length > 2      # if range contains more than two numbers...
          result << "#{range.first}-#{range.last}"  # shovel the first and last number into result
        else                     # If range only has one or two numbers...
          result << range        # shovel the number(s) into result without any extra formatting
        end
        range = []               # Clear range of its previous value
      end
    end
  end

  # Result
  return result.join(",")        # result.join makes strings out of the numbers
end
