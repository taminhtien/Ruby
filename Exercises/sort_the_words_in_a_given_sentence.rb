def sort_string(string)
  string.split(' ').sort{|x, y| x.length <=> y.length}.join(' ')
end
puts sort_string('i am awesome 1')