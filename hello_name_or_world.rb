def hello(name = "World")              # Set up a default argument
  if name == ""                        # If name is an empty string...
    name = "World"                     # define name
  end
  return "Hello, #{name.capitalize}!"  # .capitalize name to fix case
end
