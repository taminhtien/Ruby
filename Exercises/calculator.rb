class Calculator
  def add(a, b)
    puts a + b
  end

  def subtract(a, b)
    puts a - b
  end
end

c = Calculator.new
puts c.add(1, 2)
puts c.subtract(1, 2)

puts c.class
