def length_finder(input_array)
  arr_length = []
  input_array.each do |i|
    arr_length << i.length
  end
  return arr_length
end
input_array = ['Ruby', 'Rails', 'C42']
puts length_finder(input_array)
