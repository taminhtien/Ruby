# open the file "new-fd" and create a file descriptor:
fd = IO.sysopen("new-fd", "w")

# create a new I/O stream using the file descriptor for "new-fd":
p IO.new(fd)# open the file "new-fd" and create a file descriptor:
fd = IO.sysopen("new-fd", "w")

# create a new I/O stream using the file descriptor for "new-fd":
p IO.new(fd)

io_streams = Array.new
ObjectSpace.each_object(IO) { |x| io_streams << x }

p io_streams

# Using the `File` Class
# Opening and closing

=begin
mode = "r+" # Read & Write
file = File.open("friend-list.txt", mode) # => not a real File Object
puts file.inspect
puts file.read
file.close
=end

what_am_i = File.open("clean-slate.txt", "w") do |file|
  file.puts "Call me Ishmael."
end

p what_am_i

File.open("clean-slate.txt", "r") {|file| puts file.read }

# Reading and Writing
file = File.open("clean-slate.txt", "r+")

p file.read
file.rewind # try commenting out this line to see what happens!
# can you guess why this happens?

buffer = ""
p file.read(23, buffer)
p buffer

file.close

p File.read("clean-slate.txt")

File.open("clean-slate.txt") do |f|
  f.seek(20, IO::SEEK_SET)
  p f.read(10)
end

lines = File.readlines("clean-slate.txt")
p lines
p lines[0]

File.open("disguise", "w") do |f|
  f.write("Bar")
end