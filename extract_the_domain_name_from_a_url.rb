def domain_name(url)
  # Variables
  result = []

  # Checking for http/https
  if url.start_with?("https")
    url = url.delete_prefix("https://")
  elsif url.start_with? ("http")
    url = url.delete_prefix("http://")
  end

  # Checking for www.
  if url.start_with?("www.")
    url = url.delete_prefix("www.")
  end

  # Split on the dot and return first part
  url.split(".")[0]

  # Return first part
  # url[0]
end


# Old method
# def domain_name(url)
#   result = []
#   if url.start_with?("https")
#     url = url.split("https://")
#     url = url.join
#   elsif url.start_with? ("http")
#     url = url.split("http://")
#     url = url.join
#   end
#   if url.start_with?("www.")
#     url = url.split("www.")
#     url = url.join
#   end
#   url.each_char do |x|
#     result << x
#     if x == "."
#       break
#     end
#   end
#   result.pop
#   result.join
# end

puts domain_name("http://google.com")
puts domain_name("www.xakep.ru")
