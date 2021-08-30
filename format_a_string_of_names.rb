def list names
  # Variables
  array = []
  final = ""

  # Loop
  names.each do |hash|                      # For each hash in names...
    hash.each do |key, first_name|               # for each key and first name in hash...
      array << first_name                        # shovel each first name into array
    end
  end

  if array.length > 1                       # If array is longer than one first name...
    final = "#{array[-2]} & #{array[-1]}"   # join the last two names together with an & symbol
    array.pop                               # Remove the last two names from the array
    array.pop
    array << final                          # Join the final name group to the end of array
    return array.join(", ")                 # Return the array joined with commas and spaces
  else                                      # If the array is one first name or less...
    return array.join                       # return the array as a string
  end
end
