def random_select(array, n)
  arr2 = []
  n.times do
    i = Random.rand(array.length)
    arr2 << array[i]
  end
  return arr2
end

def random_select2(array, n)
  arr2 = []
  n.times do
    arr2 << array[rand(array.length)]
  end
  arr2
end

array = [1, 7, 3, 4, 5]
puts random_select2(array, 3)
