def order(words)
  # Variables
  result = []

  array = words.split.each do |word|  ## For each word in words...
    word.each_char do |y|             ## For each char in that word...
      if (48..57).include? y.ord      ## If that char is a number in ascii,
        result[y.to_i - 1] = word     # place the word into result in the
      end                             # position determined by the number
    end
  end
  result.join(" ")
end

puts order("is2 Thi1s T4est 3a")
