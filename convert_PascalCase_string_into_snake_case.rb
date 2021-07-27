def to_underscore(string)
  # Variables
  result = []

  # Checking if the string is just numbers
  if string.is_a? Numeric
     return string.to_s
  end

  # Making the first letter downcase
  string[0] = string[0].downcase

  # Checking for uppercase ascii values and
    # mapping the results
  string.each_char do |x|
    if x.ord >= 65 && x.ord <= 90
      x = "_#{x.downcase}"
    end
    result << x
  end

  # Result
  result.join
end
