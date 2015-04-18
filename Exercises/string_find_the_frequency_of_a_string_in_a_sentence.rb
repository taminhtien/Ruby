def find_frequency(sentence, word)
  sentence = sentence.downcase
  arrSentence = sentence.split(' ') # or arrSentence = sentence.split
  arrSentence.count(word)
end

puts find_frequency('Ruby is The best language in the World', 'the')

def find_frequency(sentence, word)
  sentence.downcase.split.count(word.downcase)
end