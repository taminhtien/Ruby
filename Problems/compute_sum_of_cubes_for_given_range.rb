=begin
def sum_of_cubes(a, b)
  sum = 0
  loop do
    sum += (a*a*a)
    break if a == b
    a += 1
  end
  sum
end

def sum_of_cubes(a, b)
  sum = 0
  (a..b).each do |i|
    sum += i*i*i
  end
  sum
end
=end

def sum_of_cubes(a, b)
  (a..b).inject(0) { |sum, x| sum += (x*x*x) }
end

puts sum_of_cubes(1, 3)