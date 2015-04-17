=begin
# method = something one object can do for another
# ex:
puts 1.next
puts 1.method("next")

next_method_object = 1.method("next")
puts next_method_object.call
def reverse_sign(an_integer)
  return 0 - an_integer
end

puts reverse_sign(100)
puts reverse_sign(-5)

def do_nothing
end

puts do_nothing.class

def demonstrate_early_return
  return
  puts "You will never see this, because we never get here."
end

# no code in the method after the return statement is executed.
puts demonstrate_early_return.class

def add_two(a)
  a + 2
end

# We can default the last parameter in the previous example to 0
# if nothing is passed to it.
def add(a_number, another_number, yet_another_number = 0)
  a_number + another_number + yet_another_number
end

puts add(1, 2)
puts add(1, 5, 5)

def say_hello(name = "Qui-Gon Jinn")
  "Hello, #{name}."
end
puts say_hello()

# Arraying your arguments

def add(*numbers)
  numbers.inject(0) { |sum, number| sum + number }
end

puts add(1)
puts add(1, 2)
puts add(1, 2, 3)
puts add(1, 2, 3, 4)

def add(a_number, another_number, yet_another_number)
  a_number + another_number + yet_another_number
end

numbers_to_add = [1, 2, 3]
puts add(*numbers_to_add)

def add(*numbers)
  numbers.inject(0) { |sum, number| sum + number }
end

def add_with_message(*numbers, message)
  "#{message} : #{add(*numbers)}"
end

puts add_with_message(1, 2, 3, "The Sum is")
end

def get_name(*number_of_names)
  number_of_names.inject("") { |name, string| name + string}
  name = ''
  number_of_names.each do |i|
    name += i + ' '
  end
  return name.strip
end

=begin
def introduction(age, gender, *number_of_names)
  "Meet #{get_name(*number_of_names)}, who's #{age} and #{gender}"
end
#=end

def introduction(age, gender, *names)
  puts names.join(' ').class
  "Meet #{names.join(' ')}, who's #{age} and #{gender}"
end

puts introduction(28, "Male", "Sidu", "Ponnappa", "Chonira")

def add(a_number, another_number, options = {})
  sum = a_number + another_number
  sum = sum.abs if options[:absolute]
  sum = sum.round(options[:precision]) if options[:round]
  sum
end

puts add(1.0134, -5.568)
puts add(1.0134, -5.568, absolute: true)
puts add(1.0134, -5.568, absolute: true, round: true, precision: 2)

=end

def calculate(*arguments)
  options = arguments[-1].is_a?(Hash) ? arguments.pop : {}
  options[:add] = true if options.empty?
  return add(*arguments) if options[:add]
  return subtract(*arguments) if options[:subtract]
end

def add(*number)
  sum = number.inject(0) {|sum, x| sum + x}
end

def subtract(*number)
  sub = number[0]
  sum = 0
  (1..(number.length - 1)).each do |i|
    sum += number[i]
  end
  sub = sub - sum
end

#=begin
def subtract(*numbers)
  current_result = numbers.shift
  numbers.inject(current_result) { |current_result, number| current_result - number }
end
#=end

puts add(1, 2, 3, 4)
puts subtract(4, 5)