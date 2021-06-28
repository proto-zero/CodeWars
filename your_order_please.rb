def order(words)
  # Variables
  result = []

  array = words.split.each do |word|   # For each word in words
    word.each_char do |y|
      if (48..57).include? y.ord
        result[y.to_i - 1] = word
      end
    end
  end
  result.join(" ")
end

puts order("is2 Thi1s T4est 3a")
