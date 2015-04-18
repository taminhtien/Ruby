#=begin
def palindrome?(sentence)
  sentence.downcase.split(' ').join.reverse == sentence.downcase.split(' ').join
end
#=end

=begin
def palindrome?(sentence)
  downcase_stripped_sentence = sentence.downcase.gsub(" ", "")
  downcase_stripped_sentence  ==  downcase_stripped_sentence.reverse
end
=end
puts palindrome?'Race fast safe car'