require 'pry'

# this method returns an array of hashes, which we'll use in the other methods
def spicy_foods 
  [
    { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
    { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
    { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 }
  ]
end

# given an array of spicy foods, **return an array of strings**
# with the names of each spicy food
def get_names(spicy_foods)
  #Use Case: When you want to access every element of an array, calculate a new value, and return a new array of those new values with the same length as the original array.
  ### The alias for #map is #collect
  spicy_foods.map { |food| food[:name] }
end

# given an array of spicy foods, **return an array of hashes** 
# where the heat level of the food is greater than 5
def spiciest_foods(spicy_foods)
  # Use Case: When you want to access every element of an array, check if it matches some criteria, and return a new array of all the values that match.
  ### #filter method (also aliased as #select and #find_all) 
  spicy_foods.filter { |food| food[:heat_level] > 5 }
          #or
  spicy_foods.select { |food| food[:heat_level] > 5}
end

# given an array of spicy foods, **output to the terminal**
# each spicy food in the following format: 
# Buffalo Wings (American) | Heat Level: 🌶🌶🌶
# HINT: you can use * with a string to produce the correct number of 🌶 emoji. 
# "hello" * 3 == "hellohellohello"
def print_spicy_foods(spicy_foods)
  # Use Case: When you want to access each element of the array, but don't care about returning a new array.
  ### In JavaScript, the forEach method can be used to access every element of an array
  ### Ruby's #each method gives similar functionality:
  spicy_foods.each do |food|
    puts "#{food[:name]} (#{food[:cuisine]}) | Heat Level: #{"🌶" * food[:heat_level]}"
  end
end

# given an array of spicy foods and a string representing a cuisine, **return a single hash**  
# for the spicy food whose cuisine matches the cuisine being passed to the method
def get_spicy_food_by_cuisine(spicy_foods, cuisine)
  # Use Case: When you want to access every element of an array, check if it matches some criteria, and return the first element that matches.
  # #find method (and its alias method #detect) work much like the #filter method. The key difference is that while #filter will return an array of all the elements that match some criteria, #find will only return the first one:
  spicy_foods.find do |food|
    food[:cuisine] == cuisine
  end
end

# Given an array of spicy foods, **return an array of hashes** 
# sorted by heat level from lowest to highest
def sort_by_heat(spicy_foods)
  # Use case: return a new array where all the elements have been sorted based on some criteria.
  # Ruby also provides a #sort_by method, which, instead of passing two elements to the block and requiring you to write the comparison logic, just passes one element to the block:
  spicy_foods.sort_by do |food|
    food[:heat_level]
  end
end

# given an array of spicy foods, output to the terminal ONLY 
# the spicy foods that have a heat level greater than 5, in the following format: 
# Buffalo Wings (American) | Heat Level: 🌶🌶🌶
# HINT: Try to use methods you've already written to solve this!
def print_spiciest_foods(spicy_foods)
  # #select
  # Use Case: When you want to access every element of an array, check if it matches some criteria, and return a new array of all the values that match.
  spicy_foods.select { |food| food[:heat_level] > 5}.map do |food|
    puts "#{food[:name]} (#{food[:cuisine]}) | Heat Level: #{"🌶" * food[:heat_level]}"
  end
end

# given an array of spicy foods, return an integer representing 
# the average heat level of all the spicy foods in the array
def average_heat_level(spicy_foods)
  # your code here
  total_heat_level = 0
  spicy_foods.each do |food|
    total_heat_level += food[:heat_level]
  end
  average_heat_level = total_heat_level / spicy_foods.length
end
