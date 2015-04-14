puts 1.methods
puts 1.methods.sort
puts ['rock','paper','scissors'].index('rock')
puts 2.between?(1, 3)
puts 4+3
puts 'Hello Ruby'
puts "Hello Ruby"
puts 'Hello Ruby'.length

# String Interpolation
a = 1
b = 4
puts "The number #{a} is less than #{b}"

# String literal
# def string_length_interpolater(incoming_string)
#   "The string you just gave me has a length of #{incoming_string.length}"
#   'The string you just gave me has a length of #{incoming_string.length}'
# end

# String manipulation
# Search in String
"[Luke:] I can’t believe it. [Yoda:] That is why you fail.".include?'Yoda'
# Check if the string starts with
"Ruby is a beautiful language".start_with?'Ruby'
# Check if the string ends with
"I can't work with any other language but Ruby".end_with?'Ruby'
# Find out index of character
"I am a Rubyist".index('R')
# String case change
puts 'i am in lowercase'.upcase #=> 'I AM IN LOWERCASE'
puts 'This is Mixed CASE'.downcase
puts "ThiS iS A vErY ComPlEx SenTeNcE".swapcase

# Advanced String Operations
# String split
puts 'Fear is the path to the dark side'.split(' ')

# Concatenating Strings
puts 'Ruby' + 'Monk'
puts "Ruby" << "Monk"

# In the first case of using '+', the original string is not modified,
# as a third string 'RubyMonk' is created.
# This can make a huge difference in your memory utilization,
# if you are doing really large scale string manipulations.

# Replacing a substring
# replace first occurrences
puts "I should look into your problem when I get time".sub('I','We')
# replace all occurrences
puts "I should look into your problem when I get time".gsub('I','We')

puts 'RubyMonk'.gsub(/[aeiou]/,'1')
puts 'RubyMonk Is Pretty Brilliant1234'.gsub(/[a-f1-3]/, '0')

# specifies the position in the string to begin the search
puts 'RubyMonk Is Pretty Brilliant'.match(/ ./, 9)

# Boolean Expressions in Ruby
name=="Bob"
age <= 35# change this expression
age >= 23 && (name == 'Bob' || name == 'Jill')
# Negating expressions
!(name == 'Bob')

# The if..else construct
def check_sign(number)
  if number == 0
    number
  elsif number > 0
    "#{number} is positive"
  else
    "#{number} is negative"
  end
end

# unless
age = 10
unless age >= 18
  puts "Sorry, you need to be at least eighteen to drive a car. Grow up fast!"
end

# The ternary operator
def check_sign(number)
  number > 0 ? "#{number} is positive" : "#{number} is negative"
end

# The objects false and nil equates to false.
# Every other object like say 1, 0, "" are all evaluated to be true.

if 0
  puts "Hey, 0 is considered to be a truth in Ruby"
end

# Loops in Ruby
puts Array.methods
loop do
  puts "this line will be executed for an infinite amount of time"
end

# Break statement
loop do
  monk.meditate
  break if monk.nirvana?
end

# Run a block of code N times
def ring(bell, n)
  n.times do
    bell.ring
  end
end

# Empty arrays
[1, 2, 3, 4]
Array.new
# Looking up data in Arrays
[1, 2, 3, 4, 5][2] # return 3
[1, 2, 3, 4, 5, 6, 7][4] # return 5

# Array indexes can also start from the end of the array,
# rather than the beginning! In Ruby, this is achieved by using negative numbers.
# This is called reverse index lookup.

[1, 2, 3, 4, 5][-5] # return 1
[1, 2, 3, 4, 5][-1] # return 5

# Appending, growing the String to an array
[1, 2, 3, 4, 5] << 'woot'
[1, 2, 3, 4, 5].append('woot')
[1, 2, 3, 4, 5].push('woot')

# Map: the method map is used to transform the contents of an array
# according to a specified set of rules defined inside the code block

[1, 2, 3, 4, 5].map { |i| i + 1 } # [2, 3, 4, 5, 6]
[1, 2, 3, 4, 5].map { |i| i * 3 } # [3, 6, 9, 12, 15]
[1, 2, 3, 4, 5].collect { |i| i * 3 } # map is a alias of collect

# Filtering elements of an Array
# select even numbers
[1,2,3,4,5,6].select {|number| number % 2 == 0}

# extracting the strings that are longer than five characters.
names = ['rock', 'paper', 'scissors', 'lizard', 'spock']
names.select { |i| i.length > 5} # return ["scissors", "lizard"]

# Deleting elements
[1,3,5,4,6,7].delete 5 # delete element 5
[1,2,3,4,5,6,7].delete_if{|i| i < 4 }
[1,2,3,4,5,6,7,8,9].delete_if { |i| i % 2 == 0} # Delete all the even numbers

# Iteration
# Got `for` loops?
array = [1, 2, 3, 4, 5]
for i in array
  puts i
end

def array_copy(source)
  destination = []
  for i in source
    if i < 4
      destination.push(i)
      # destination.append(i)
      # destination << i
    end
    # destination << i if i < 4
  end
  return destination
end

# looping with `each`
array = [1, 2, 3, 4, 5]
array.each do |i|
  puts i
end

def array_copy(source)
  destination = []
  source.each do |i|
    destination << i if i < 4
  end
  return destination
end

# find existence of an element in array
# .include?
# .index
# .startWith
# .endWith

# Ruby Hashes
# Creating a Hash

student_ages = {
    "Jack" => 10,
    "Jill" => 12,
    "Bob" => 14
}

restaurant_menu = {
    "Ramen" => 3,
    "Dal Makhani" => 4,
    "Tea" => 2
}
# Fetch values from a Hash
restaurant_menu["Ramen"]

# Modifying a Hash
restaurant_menu = {}
# set the values for each item separately here:
restaurant_menu["Dal Makhani"] = 4.5
restaurant_menu["Tea"] = 2

# Iterating over a Hash
restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }
restaurant_menu.each do | item, price |
  puts "#{item}: $#{price}"
end

restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }
restaurant_menu.each do |item, price|
  restaurant_menu[item] = price + (price * 0.1)
end
restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }
restaurant_menu.keys
restaurant_menu.values

# combine arrays to array [a, b, c]
def artax
  a = [:punch, 0]
  b = [:kick, 72]
  c = [:stops_bullets_with_hands, false]
  key_value_pairs = [a, b, c] # you can do this. you are a champion.
  # unlike Artax, who gave up in a swamp.
  Hash[key_value_pairs]
end