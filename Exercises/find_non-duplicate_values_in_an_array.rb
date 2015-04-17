def non_duplicated_values(values)
  values2 = []
  values.each do |i|
    if values.count(i) == 1
      values2 << i
    end
  end
  values2
end

def non_duplicated_values2(values)
  values.find_all { |x| values.count(x) == 1 }
end

values = [1,2,2,3,3,4,5]
puts non_duplicated_values(values)