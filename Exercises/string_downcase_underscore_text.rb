def format(string)
  string.downcase.split(' ').join('_')
end

p format('Check if all elements in an array are Fixnum')