def domain_name(url)
  result = []
  if url.start_with?("https")
    url = url.delete("https://")
  elsif url.start_with? ("http")
    url = url.delete("http://")
  end
  if url.start_with?("www.")
    url = url.delete("www.")
  end
  url.each_char do |x|
    result << x
    if x == "."
      break
    end
  end
  result.pop
  result.join
end

puts domain_name("http://google.com")
