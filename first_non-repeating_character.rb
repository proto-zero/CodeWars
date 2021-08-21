def  first_non_repeating_letter(string)
  # Variables
  lowercase_string = string.downcase                      # Change all chars to lowercase for a more accurate count

  # Loop
  lowercase_string.each_char.with_index do |char, index|  # Check each character and index in the lowercase string
    if lowercase_string.count(char) == 1                  # The first time the count equals zero...
      return string[index]                                # return the original character from string in order to preserve original casing
    end
  end

  # If sting is empty or all repeating strings
  return ""
end
