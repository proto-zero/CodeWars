def solution(string)
  # Variables
  result = []

  string.each_char do |x|       # For each character in the string...
    if x != x.upcase            # if that character is not uppercase...
      result << x               # shovel it into the result as is.
    elsif x == x.upcase         # if that character is in fact uppercase...
      result << " #{x}"         # shovel a space and then that character into the result.
    end
  end

  # Result
  result.join
end

# Practice writing solution in one line
def solution(string)
  string.chars.map { |s| s == s.downcase ? s : " #{s}" }.join
end
