class MyArray
  attr_reader :array

  def initialize(array)
    @array = array
  end

  def sum(initial_value = 0)
    return @array.inject(:+) + initial_value unless block_given?
    @array.inject(initial_value) {|sum, i| sum + yield(i)}
  end
end

my_array = MyArray.new([1, 2, 3])
p my_array.sum
p my_array.sum(10)
p my_array.sum(0) {|n| n ** 2 }