# Some fibonacci method
#--------------
def fib_r(a, b, n)
  n == 0 ? a : fib_r(b, a + b, n - 1)
end

def fib(n)
  fib_r(0, 1, n)
end

p (0..100).map{ |n| fib(n) }

#--------------
def fibo(n)
 return 1 if n <= 1
  fibo(n - 1) + fibo(n - 2)
end

(0..7).each do |i|
  puts fibo(i)
end

#--------------
def fib(n)
  n.times.each_with_object([0,1]) { |num, obj| obj << obj[-2] + obj[-1] }
end
puts fib(10)

#--------------
def fibo(n)
  a = 0
  b = 1
  for i in 0..n
    c = a + b;
    puts c
    a = b
    b = c
  end
end
fibo(10)