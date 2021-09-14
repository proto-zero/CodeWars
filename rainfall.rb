def parse(town, string)
  # Variables
  city_rain = "none"
  numbers = []
  mean = 0

  # Isolate the city and its rain data
  array = string.split("\n")                                      # Split the string into an array on each new line
  array.each do |x|                                               # For each city/rain dataset in the array...
    if x.include?(town + ":")                                     # if that dataset string includes the name of the town with a colon...
      city_rain = x                                               # make city_rain equal that string
    end
  end

  if city_rain == "none"                                          # If the city is doesn't appear in the string...
    return -1                                                     # return a result of -1
  end

  # Create an array with the city separate from the rain data
  city_rain = city_rain.split(":")

  # Isolate the rain data                                         # In the dataset portion of the array...
  just_rain = city_rain[1].gsub(",", " ").split(" ")              # replace the commas with spaces and split into a new array on the spaces
  just_rain.each_with_index do |item, index|                      # For each item and position in the new array...
    if index.odd?                                                 # if the index is odd, so for the rain numbers in every other position...
      numbers << item.to_f                                        # shovel those numbers into the numbers array
    end
  end
  return numbers
end

def mean(town, string)
  numbers = parse(town, string)                                   # Run the parse function
  if numbers == -1                                                # If the city is doesn't appear in the string...
    return -1                                                     # return a result of -1
  end
  mean = (numbers.sum / numbers.length)                           # Divide the sum of all of the rain numbers by the total amount of numbers
  return mean
end

def variance(town, string)
  # Variables
  variance_array = []
  numbers = parse(town, string)
  mean = mean(town, string)

  if numbers == -1                                                # If the city is doesn't appear in the string...
    return -1                                                     # return a result of -1
  end

  numbers.each do |x|                                             # For each number in the dataset...
    variance_array << ((x - mean) * (x - mean))                   # subtract that number from the mean, then square it (multiply by itself)
  end
  return (variance_array.sum / variance_array.length)             # Return the mean
end
