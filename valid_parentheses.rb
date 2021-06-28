def valid_parentheses(string)
  # Variables
  result = []

  string.each_char do |x|      ### By checking each character in the string
    if x == "("                # we can push any opening parentheses into
      result << x              # an array called result.
    elsif x == ")"             ### When we come across any closing parentheses
      if result.length > 0     # we can pop one of the (s from the result.
        result.pop             ### However, if there aren't enough (s to pop
      else                     # from result, then the answer is false.
        return false
      end
    end
  end

  if result.length > 0
    return false
  else
    return true
  end
end

puts valid_parentheses(")")
puts valid_parentheses("(")
puts valid_parentheses("()")
puts valid_parentheses("(hello)")
