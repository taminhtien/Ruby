puts 1.methods
puts 1.methods.sort
puts ['rock','paper','scissors'].index('rock')
puts 2.between?(1, 3)
puts 4+3
puts 'Hello Ruby'
puts "Hello Ruby"
puts 'Hello Ruby'.length
#String Interpolation
a = 1
b = 4
puts "The number #{a} is less than #{b}"
#String literal
#def string_length_interpolater(incoming_string)
#  "The string you just gave me has a length of #{incoming_string.length}"
#  'The string you just gave me has a length of #{incoming_string.length}'
#end
#Search in String
"[Luke:] I can’t believe it. [Yoda:] That is why you fail.".include?'Yoda'
#Check if the string starts with
"Ruby is a beautiful language".start_with?'Ruby'
#Check if the string ends with
"I can't work with any other language but Ruby".end_with?'Ruby'
#Find out index of character
"I am a Rubyist".index('R')
#String case change
puts 'i am in lowercase'.upcase #=> 'I AM IN LOWERCASE'
puts 'This is Mixed CASE'.downcase
puts "ThiS iS A vErY ComPlEx SenTeNcE".swapcase