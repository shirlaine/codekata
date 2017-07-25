=begin

Specs

Implement a Ruby method word_count that counts the number of words in a given sentence
This method should take one argument (sentence), a String, and return a Fixnum representing the number of words in the sentence
word_count("The quick brown fox jumps over the lazy dog") should return 9

word_count("Le Wagon") should return 2

=end

def word_count(string)

string.split.count

end

puts word_count("this is a sentence") # => 4
puts word_count("the lazy fox jumped over the quick brown fox")  # => 9