def get_order(order)
  # Variables
  result = []
  list = []
  burger = []
  fries = []
  chicken = []
  pizza = []
  sandwich = []
  onionrings = []
  milkshake = []
  coke = []

  # Add spaces and capitalize
  order.gsub!("burger", "Burger ")
  order.gsub!("fries", "Fries ")
  order.gsub!("chicken", "Chicken ")
  order.gsub!("pizza", "Pizza ")
  order.gsub!("sandwich", "Sandwich ")
  order.gsub!("onionrings", "Onionrings ")
  order.gsub!("milkshake", "Milkshake ")
  order.gsub!("coke", "Coke ")

  list = order.split

  # Place each menu item in its own array
  list.each do |x|
    if x == "Burger"
      burger << x
    elsif x == "Fries"
      fries << x
    elsif x == "Chicken"
      chicken << x
    elsif x == "Pizza"
      pizza << x
    elsif x == "Sandwich"
      sandwich << x
    elsif x == "Onionrings"
      onionrings << x
    elsif x == "Milkshake"
      milkshake << x
    elsif x == "Coke"
      coke << x
    end
  end

  # Create the result from the individual menu items in the correct order
  result = burger + fries + chicken + pizza + sandwich + onionrings + milkshake + coke

  # Return the result properly joined with spaces
  result.join(" ")
end
