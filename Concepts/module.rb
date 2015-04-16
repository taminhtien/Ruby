# Ruby modules allow you to create groups of methods that you can then
# include or mix into any number of classes. Modules only hold behaviour,
# unlike classes, which hold both behaviour and state.

# Since a module cannot be instantiated, there is no way for its methods
# to be called directly. Instead, it should be included in another class,
# which makes its methods available for use in instances of that class.

# Example
module WarmUp
  def push_ups
    "Phew, I need a break!"
  end
end

puts WarmUp.class      # Module
puts Class.superclass   # Module
puts Module.superclass  # Object

class Gym
  include WarmUp

  def preacher_curls
    "I'm building my biceps."
  end
end

class Dojo
  include WarmUp

  def tai_kyo_kyu
    "Look at my stance!"
  end
end

puts Gym.new.push_ups
puts Dojo.new.push_ups

# Example
module Perimeter
  def perimeter
    sides.inject(0) {|sum, side| sum + side}
  end
end

class Rectangle
  include Perimeter
  def initialize(length, breadth)
    @length = length
    @breadth = breadth
  end

  def sides
    [@length, @breadth, @length, @breadth]
  end
end

class Square
  include Perimeter
  def initialize(side)
    @side = side
  end

  def sides
    [@side, @side, @side, @side]
  end
end

puts Square.new(2).perimeter
puts Rectangle.new(2, 10).perimeter