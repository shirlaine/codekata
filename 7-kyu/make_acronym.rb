=begin

Implement a function called makeAcronym that returns the first letters of each word in a passed in string.

Make sure the letters returned are uppercase.

If the value passed in is not a string return 'Not a string'.

If the value passed in is a string which contains characters other than spaces and alphabet letters, return 'Not letters'.

If the string is empty, just return the string itself: "".

EXAMPLES:

'Hello codewarrior' -> 'HC'

'a42' -> 'Not letters'

42 -> 'Not a string'

[2,12] -> 'Not a string'

{name: 'Abraham'} -> 'Not a string'

1. input=> string output => string

=end

def make_acronym(str)

  return str if str == nil
  return "Not a string" if str.class == Integer
  return "Not letters" if str=~ /[\d]/
  return "Not a string" if str.class!= String

  str.scan(/\w+/).map {|word| word[0].upcase}.join



end

p make_acronym('Hello codewarrior')
p make_acronym(42)
p make_acronym("a42")
p make_acronym("")
p make_acronym([2,12])
p make_acronym({name: 'Abraham'})

