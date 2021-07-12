def title_case(title, minor_words = '')
  result = []

  title = title.capitalize.split
  result << title[0]
  title.delete(title[0])
  title.each do |x|
    if !minor_words.downcase.split.include? x
      result << x.capitalize
    else
     result << x
    end
  end

  result.join(" ")

end

puts title_case('First a of in', 'an often into')
puts title_case('a clash of KINGS', 'a an the of')
puts title_case('THE WIND IN THE WILLOWS', 'The In')
puts title_case('the quick brown fox') 
