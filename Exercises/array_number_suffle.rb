def number_shuffle(number)
  # Covert number to array
  arr_number = number.to_s.split('')
  arr_number = arr_number.uniq
  # Number of combinations
  # no_of_conbinations = (1..arr_number.size).inject(1) {|n, i| n * i}
  no_of_combinations = (1..arr_number.size).inject(:*)
  combinations = []
  combinations << arr_number.shuffle.join.to_i while combinations.uniq.size != no_of_combinations
  combinations.uniq.sort
end

p number_shuffle(1223)