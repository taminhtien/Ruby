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

# Modules as Namespaces

module Perimeter
  class Array
    def initialize
      @size = 400
    end
  end
end

our_array = Perimeter::Array.new
ruby_array = Array.new

p our_array.class # => Perimeter::Array
p ruby_array.class # => Array

class Array
  def initialize
    @size = 400
  end
end

our_array = Array.new

p our_array.class # =>> Array

# class Push
#   def up
#     40
#   end
# end
require "gym" # up returns 40
gym_push = Push.new
p gym_push.up

# class Push
#   def up
#     30
#   end
# end
require "dojo" # up returns 30
dojo_push = Push.new
p dojo_push.up

# module Gym
#   class Push
#     def up
#       40
#     end
#   end
# end
require "gym"

# module Dojo
#   class Push
#     def up
#       30
#     end
#   end
# end
require "dojo"

dojo_push = Dojo::Push.new
p dojo_push.up

gym_push = Gym::Push.new
p gym_push.up

# Constant loop up

module Dojo
  A = 4
  module Kata
    B = 8
    module Roulette
      class ScopeIn
        def push
          15
        end
      end
    end
  end
end

A = 16
B = 23
C = 42

puts "A - #{A}"
puts "Dojo::A - #{Dojo::A}"

puts

puts "B - #{B}"
puts "Dojo::Kata::B - #{Dojo::Kata::B}"

puts

puts "C - #{C}"
puts "Dojo::Kata::Roulette::ScopeIn.new.push - #{Dojo::Kata::Roulette::ScopeIn.new.push}"


module RubyMonk
  module Parser
    class TextParser
      def self.parse(string)
        string.upcase.split('')
      end
    end
  end
end

# If you prepend a constant with :: without a parent, the scoping happens
# on the topmost level.
                                                                                           module Kata
  A = 5
  module Dojo
    B = 9
    A = 7

    class ScopeIn
      def push
        10
      end
    end
  end
end
A = 10

