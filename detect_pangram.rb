def pangram?(string)
  # Variables
  alpha = "abcdefghijklmnopqrstuvwxyz"
  result = true

  # Loop through the Alphabet
  alpha.each_char do |x|
    if !string.downcase.include? x
      result = false
      return result
    end
  end
  result
end
