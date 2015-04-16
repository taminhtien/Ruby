# A lambda is just a function... peculiarly... without a name.
# They're anonymous, little functional spies sneaking into the rest of your code.
l = lambda { "Do or do not" }
puts l.call

l = lambda do |string|
  if string == "try"
    return "There's no such thing"
  else
    return "Do or do not."
  end
end

puts l.call("try") # Feel free to experiment with this
Increment = lambda { |i| i + 1} # your lambda between the braces

# A lambda is a piece of code that you can store in a variable, and is an object.
# A block is that it is a piece of code that can't be stored in a variable and isn't an object.

def demonstrate_block(number)
  yield(number)
end

puts demonstrate_block(1) { |number| number + 1 }

def calculate(a, b)
  yield(a, b)
end

puts calculate(2, 3) {|a, b| a + b}