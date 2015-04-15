=begin
# Grouping Objects
puts 1.is_a?(Integer)
puts 1.is_a?(String)

# Class are people too
puts 1.class.class

# Create an instance of an object
Object.new

# Make your class
class Rectangle
  def perimeter
  end
end
=end
class Rectangle
  def initialize(length, breadth)
    @length = length
    @breadth = breadth
  end

  def perimeter
    2 * (@length + @breadth)
  end

  def area
    @length * @breadth
  end
end

puts 'Perimeter: ' + Rectangle.new(5, 3).perimeter.to_s + ' Area: ' + Rectangle.new(5, 3).area.to_s